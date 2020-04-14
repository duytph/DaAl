// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "DaAl",
    products: [
        .library(
            name: "DaAl",
            targets: ["DaAl"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "DaAl",
            dependencies: []),
        .testTarget(
            name: "DaAlTests",
            dependencies: ["DaAl"]),
    ]
)
