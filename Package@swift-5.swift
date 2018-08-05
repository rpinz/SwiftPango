// swift-tools-version:5.0

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
            url: "https://github.com/rpinz/SwiftGObject",
            .branch("master"))
    ],
    targets: [
        .target(
            name: "Pango",
            dependencies: ["CPango","GLibObject"],
            path: "Sources"),
        .testTarget(
            name: "PangoTests",
            dependencies: ["Pango"]),
        .systemLibrary(
            name: "CPango",
            path: "Library/CPango",
            pkgConfig: "pango",
            providers: [
                .brew(["libpango1.0"]),
                .apt(["libpango1.0-dev"])
            ])
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
