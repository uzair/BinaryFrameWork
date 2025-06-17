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
            url: "https://github.com/uzair/BinaryFrameWork/releases/download/1.0.6/MyWhooshSampleFrameWork.xcframework.zip",
            checksum: "b537465d741af06fa01cd17cace2872e3fbaafc77269cd32c438249ff927c087"
        )
    ]
)
