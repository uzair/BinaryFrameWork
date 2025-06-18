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
            url: "https://github.com/uzair/BinaryFrameWork/releases/download/2.0.3/MyWhooshSampleFrameWork.xcframework.zip",
            checksum: "c9b0134c40974332931b674e0ff0d0e2670a27ec0d0ac7ad686be77c8a154b5f"
        )
    ]
)
