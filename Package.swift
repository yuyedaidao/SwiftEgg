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
            name: "SwiftEgg",
            dependencies: [],
        ),
        .testTarget(
            name: "SwiftEggTests",
            dependencies: ["SwiftEgg"])
    ],
    swiftLanguageVersions: [.v5]
)