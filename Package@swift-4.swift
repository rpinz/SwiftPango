// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Pango",
    products: [
        .library(
            name: "Pango",
            targets: ["Pango"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/rpinz/CPango",
            .branch("master")),
        .package(
            url: "https://github.com/rpinz/SwiftGObject",
            .branch("master"))
    ],
    targets: [
        .target(
            name: "Pango",
            dependencies: ["GLibObject"],
            path: "Sources"),
        .testTarget(
            name: "PangoTests",
            dependencies: ["Pango"])
    ],
    swiftLanguageVersions: [4]
)
