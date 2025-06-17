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
        .binaryTarget(name: "MyWhooshSampleFrameWork", url: "https://github.com/uzair/BinaryFrameWork/releases/download/1.0.5/MyWhooshSampleFrameWork.xcframework.zip", checksum: "9226ed63938d8af2b85d19c8b7ca93ea164c80ce2aa5deb755c36a7b9ee874cd")
        
    ]
)
