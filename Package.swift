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
            url: "https://github.com/uzair/BinaryFrameWork/releases/download/2.0.11/MyWhooshSampleFrameWork.xcframework.zip",
            checksum: "6dd9f910474c9898c41eb9f57cd0d1635de4f71684a84edaafc0f1d89f71c4ba"
        )
    ]
)
