// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-log-variadic-bootstrap",
    products: [
        .library(
            name: "VariadicBootstrap",
            targets: ["swift-log-variadic-bootstrap"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "swift-log-variadic-bootstrap",
            dependencies: [
              .product(name: "Logging", package: "swift-log"),
            ]),
        .testTarget(
            name: "swift-log-variadic-bootstrap-tests",
            dependencies: [
              "swift-log-variadic-bootstrap",
              .product(name: "Logging", package: "swift-log"),
            ]),
    ]
)
