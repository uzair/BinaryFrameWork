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
            url: "https://github.com/uzair/BinaryFrameWork/releases/download/1.0.10/MyWhooshSampleFrameWork.xcframework.zip",
            checksum: "193b2c7a10d76ad2fc730a619bf074c293a64b0d11f4eac18ddc0be99c2fe472"
        )
    ]
)
