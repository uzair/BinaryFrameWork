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
            url: "https://github.com/uzair/BinaryFrameWork/releases/download/1.0.7/MyWhooshSampleFrameWork.xcframework.zip",
            checksum: "835c3d7d7bda66bc685a62c2ca62e6cb7476d27b1725b29efbb5fff345df2eb7"
        )
    ]
)
