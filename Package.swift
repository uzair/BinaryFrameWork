// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyWhooshSampleFrameWork",
    platforms: [.iOS(.v15)], // or whatever minimum you support
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MyWhooshSampleFrameWork",
            targets: ["MyWhooshSampleFrameWork"]),
    ],
    targets: [
        .binaryTarget(name: "MyWhooshSampleFrameWork", url: "https://github.com/uzair/BinaryFrameWork/releases/download/1.0.3/MyWhooshSampleFrameWork.xcframework.zip", checksum: "a1e0379a7b3a26721c1b6b84199c86cb13ed356132aeec263f657fa823df7baf")
        

    ]
)
