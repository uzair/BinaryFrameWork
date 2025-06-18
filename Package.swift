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
            url: "https://github.com/uzair/BinaryFrameWork/releases/download/2.0.6/MyWhooshSampleFrameWork.xcframework.zip",
            checksum: "3e54ca2cea2750925a61c3b7fa95fc9090d06f47a8837d50711c33db86a07d2a"
        )
    ]
)
