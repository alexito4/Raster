// swift-tools-version:5.7

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
        .package(url: "https://github.com/pointfreeco/swift-snapshot-testing.git", from: "1.10.0"),
    ],
    targets: [
        .target(
            name: "Raster",
            dependencies: []
        ),
        .testTarget(
            name: "RasterTests",
            dependencies: [
                "Raster",
                .product(name: "SnapshotTesting", package: "swift-snapshot-testing")
            ],
            resources: [.copy("__Snapshots__")]
        ),

    ]
)
