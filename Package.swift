// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "SwiftEgg",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "SwiftEgg",
            targets: [
                "SwiftEgg"
            ]
        )
    ],
    targets: [
        .target(
            name: "SwiftEgg"),
    ],
    swiftLanguageVersions: [.v5]
)