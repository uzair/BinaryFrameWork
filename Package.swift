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
            url: "https://github.com/uzair/BinaryFrameWork/releases/download/1.0.9/MyWhooshSampleFrameWork.xcframework.zip",
            checksum: "1f25a53fd2d80fc5f116f931b6303f241967cf8cf1dfb73615d9c92c1fd04014"
        )
    ]
)
