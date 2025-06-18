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
            url: "https://github.com/uzair/BinaryFrameWork/releases/download/2.0.4/MyWhooshSampleFrameWork.xcframework.zip",
            checksum: "0d6a83b3b41f8e105bab0dd3b8fbf2456edd1a85565a03f01e8532d2ebe25b5d"
        )
    ]
)
