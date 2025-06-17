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
            url: "https://github.com/uzair/BinaryFrameWork/releases/download/2.0.0/MyWhooshSampleFrameWork.xcframework.zip",
            checksum: "0b33a770f16381de2e6098dc49557fb2e2f91a2875f14b39717e2a1945f796f1"
        )
    ]
)
