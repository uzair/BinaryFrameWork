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
            url: "https://github.com/uzair/BinaryFrameWork/releases/download/2.0.13/MyWhooshSampleFrameWork.xcframework.zip",
            checksum: "b24ed9399a97fe740e48f35375955b5a22b4f5df61e61c7b2e728dad714c4781"
        )
    ]
)
