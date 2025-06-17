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
            url: "https://github.com/uzair/BinaryFrameWork/releases/download/2.0.2/MyWhooshSampleFrameWork.xcframework.zip",
            checksum: "1fe6ad27c4c15768bb1eb968d31ff945b75517f7ef83157b5ae7ea72bc759496"
        )
    ]
)
