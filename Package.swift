// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ExtoleClientAPI",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "ExtoleClientAPI",
            targets: ["ExtoleClientAPI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "4.9.1"))
    ],
    targets: [
        .target(
            name: "ExtoleClientAPI",
            dependencies: ["Alamofire"]),
        .testTarget(
            name: "ExtoleClientAPITests",
            dependencies: ["ExtoleClientAPI"]),
    ]
)
