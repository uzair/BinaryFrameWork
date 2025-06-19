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
            url: "https://github.com/uzair/BinaryFrameWork/releases/download/2.0.15/MyWhooshSampleFrameWork.xcframework.zip",
            checksum: "f6d88851fedcc50592f21ed0120c6c3b044c972c40c86de939423f431cb423ca"
        )
    ]
)
