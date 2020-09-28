// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Mantle",
    platforms: [
        .macOS(.v10_10),
        .iOS(.v8),
        .tvOS(.v9),
        .watchOS(.v2)
    ],
    products: [
        .library(
            name: "Mantle",
            targets: ["Mantle"]),
    ],
    targets: [
        .target(
            name: "Mantle",
            dependencies: ["extobjc"],
            path: "Mantle",
            exclude: [
                "extobjc",
            ],
            publicHeadersPath: "."),
        .target(
            name: "extobjc",
            dependencies: [],
            path: "Mantle/extobjc",
            publicHeadersPath: ".")
    ]
)
