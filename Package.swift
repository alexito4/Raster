// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Raster",
    platforms: [.macOS(.v11)],
    products: [
        .library(
            name: "Raster",
            targets: ["Raster"]
        )
    ],
    dependencies: [
        .package(name: "SnapshotTesting", url: "https://github.com/pointfreeco/swift-snapshot-testing.git", from: "1.8.1"),
    ],
    targets: [
        .target(
            name: "Raster",
            dependencies: []
        ),
        .testTarget(
            name: "RasterTests",
            dependencies: ["Raster", "SnapshotTesting"],
            resources: [.copy("__Snapshots__")]
        ),

    ]
)
