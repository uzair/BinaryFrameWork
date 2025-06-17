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
            url: "https://github.com/uzair/BinaryFrameWork/releases/download/1.0.8/MyWhooshSampleFrameWork.xcframework.zip",
            checksum: "7e1b3c82fd6797ec8deb45b033d522257719b5c6cd71b2896e911ff40a3bfdf6"
        )
    ]
)
