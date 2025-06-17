
#!/bin/bash

set -e

TAG_VERSION=$1
ZIP_NAME="MyWhooshSampleFrameWork.xcframework.zip"
GITHUB_REPO="uzair/BinaryFrameWork"

if [ -z "$TAG_VERSION" ]; then
  echo "❌ Please provide a version tag, e.g. ./publish_release.sh 1.0.7"
  exit 1
fi

echo "🚀 Publishing release $TAG_VERSION to GitHub..."

# Check if release exists, if not create it
if ! gh release view "$TAG_VERSION" --repo "$GITHUB_REPO" > /dev/null 2>&1; then
  echo "Release $TAG_VERSION does not exist. Creating it..."
  gh release create "$TAG_VERSION" --repo "$GITHUB_REPO" --title "Release $TAG_VERSION" --notes "Automated release of $TAG_VERSION"
fi

# Upload ZIP asset, overwrite if exists
gh release upload "$TAG_VERSION" "$ZIP_NAME" --repo "$GITHUB_REPO" --clobber

echo "✅ Release $TAG_VERSION published with asset $ZIP_NAME"
