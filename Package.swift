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
            url: "https://github.com/uzair/BinaryFrameWork/releases/download/2.0.5/MyWhooshSampleFrameWork.xcframework.zip",
            checksum: "1e163c5ef9db103f84e7d3f967621a420c67bc4b00291efe266506356bd7dcd0"
        )
    ]
)
