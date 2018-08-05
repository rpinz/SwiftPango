import PackageDescription

let package = Package(
    name: "Pango",
    dependencies: [
        .Package(url: "https://github.com/rpinz/CPango", majorVersion: 1),
        .Package(url: "https://github.com/rpinz/SwiftGObject", majorVersion: 2)
    ],
    swiftLanguageVersions: [3, 4]
)
