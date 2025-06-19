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
            url: "https://github.com/uzair/BinaryFrameWork/releases/download/2.0.9/MyWhooshSampleFrameWork.xcframework.zip",
            checksum: "e2bb376e8ab5057f5d1b426bba64c7e04c51081331df02713f0d8505d052c76f"
        )
    ]
)
