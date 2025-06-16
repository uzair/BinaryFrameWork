// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyWhooshSampleFramework",
    platforms: [.iOS(.v15)], // or whatever minimum you support
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MyWhooshSampleFramework",
            targets: ["MyWhooshSampleFramework"]),
    ],
    targets: [
        .binaryTarget(name: "MyWhooshSampleFramework", url: "https://github.com/uzair/BinaryFrameWork/releases/download/1.0.2/MyWhooshSampleFrameWork.xcframework.zip", checksum: "043895dd142c203e7e1472aa738b4606eb1b0afb101ed4380954d5d16ccb1a7b")
        

    ]
)
