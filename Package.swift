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
            targets: ["Mantle"])
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Nimble.git", from: "8.1.2"),
        .package(url: "https://github.com/Quick/Quick.git", from: "2.2.1")
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
            publicHeadersPath: "."),
        .testTarget(
            name: "MantleTests",
            dependencies: ["Mantle", "Nimble", "Quick"],
            path: "MantleTests",
            cSettings: [
                .define("SWIFT_SWIFT3_OBJC_INFERENCE", to: "On"),
                .define("SWIFT_VERSION", to: "4.2"),
            ])
        
    ]
)
