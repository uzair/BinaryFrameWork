// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MyWhooshSampleFrameWork",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "MyWhooshSampleFrameWork",
            targets: ["MyWhooshSampleFrameWork"]),
    ],
    targets: [
        .binaryTarget(
            name: "MyWhooshSampleFrameWork",
            url: "https://github.com/uzair/BinaryFrameWork/releases/download/1.0.11/MyWhooshSampleFrameWork.xcframework.zip",
            checksum: "7acabc6e6c677b6d45f6b02b7d06a1d47129830c37a66fbfc99516df21365c71"
        )
    ]
)
