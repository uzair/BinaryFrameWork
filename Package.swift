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
            url: "https://github.com/uzair/BinaryFrameWork/releases/download/2.0.8/MyWhooshSampleFrameWork.xcframework.zip",
            checksum: "1a93e51ebf2af9797fd960e828fbfc62a86577843e59915cbb3e10326110941b"
        )
    ]
)
