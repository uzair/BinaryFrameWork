// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyWhooshSampleFrameWork",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MyWhooshSampleFrameWork",
            targets: ["MyWhooshSampleFrameWork"]),
    ],
    targets: [
        .binaryTarget(name: "MyWhooshSampleFrameWork", url: "https://github.com/uzair/BinaryFrameWork/releases/tag/1.0.0/MyWhooshSampleFrameWork.xcframework.zip", checksum: "bc72019a357ccfa04183574abb82aeaf39201da597ee929773947cbad345a6d3")

    ]
)
