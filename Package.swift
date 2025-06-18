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
            url: "https://github.com/uzair/BinaryFrameWork/releases/download/2.0.7/MyWhooshSampleFrameWork.xcframework.zip",
            checksum: "8126d559e3e37047c7c1f1732d780bedd76614810843fe11dcb627b97dbf09a1"
        )
    ]
)
