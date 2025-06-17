#!/bin/bash

set -e

# === CONFIGURATION ===
SCHEME="MyWhooshSampleFrameWork"
XCFRAMEWORK_NAME="${SCHEME}.xcframework"
ZIP_NAME="${XCFRAMEWORK_NAME}.zip"
TAG_VERSION=$1
PACKAGE_SWIFT_PATH="./Package.swift"
GITHUB_REPO="uzair/BinaryFrameWork"

if [ -z "$TAG_VERSION" ]; then
  echo "❌ Please provide a version tag, e.g. ./prepare_release.sh 1.0.6"
  exit 1
fi

echo "🔨 Cleaning..."
rm -rf build "$XCFRAMEWORK_NAME" "$ZIP_NAME"

echo "📦 Archiving for iOS..."
xcodebuild archive \
  -scheme "$SCHEME" \
  -configuration Release \
  -sdk iphoneos \
  -destination 'generic/platform=iOS' \
  -archivePath ./build/iphoneos.xcarchive \
  SKIP_INSTALL=NO \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES

echo "🧪 Archiving for Simulator..."
xcodebuild archive \
  -scheme "$SCHEME" \
  -configuration Release \
  -sdk iphonesimulator \
  -destination 'generic/platform=iOS Simulator' \
  -archivePath ./build/iphonesimulator.xcarchive \
  SKIP_INSTALL=NO \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES

echo "🔗 Creating XCFramework..."
xcodebuild -create-xcframework \
  -framework ./build/iphoneos.xcarchive/Products/Library/Frameworks/${SCHEME}.framework \
  -framework ./build/iphonesimulator.xcarchive/Products/Library/Frameworks/${SCHEME}.framework \
  -output "$XCFRAMEWORK_NAME"

echo "🗜️ Zipping..."
zip -r "$ZIP_NAME" "$XCFRAMEWORK_NAME"

if [ ! -f "$ZIP_NAME" ]; then
  echo "❌ ERROR: ZIP not found"
  exit 1
fi

echo "🔐 Computing checksum..."
CHECKSUM=$(swift package compute-checksum "$ZIP_NAME")
echo "✅ Checksum: $CHECKSUM"

echo "✍️ Updating Package.swift..."
cat > "$PACKAGE_SWIFT_PATH" <<EOL
// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "$SCHEME",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "$SCHEME",
            targets: ["$SCHEME"]),
    ],
    targets: [
        .binaryTarget(
            name: "$SCHEME",
            url: "https://github.com/$GITHUB_REPO/releases/download/$TAG_VERSION/$ZIP_NAME",
            checksum: "$CHECKSUM"
        )
    ]
)
EOL

echo "📸 Committing and tagging..."
git add "$PACKAGE_SWIFT_PATH"
git commit -m "Release $TAG_VERSION"
git tag "$TAG_VERSION"
git push origin main --tags

echo "✅ Preparation complete."
echo "Next step: Run ./publish_release.sh $TAG_VERSION"
