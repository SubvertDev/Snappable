// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "Snappable",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Snappable",
            targets: ["Snappable"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/siteline/swiftui-introspect.git", from: "1.3.0")
    ],
    targets: [
        .target(
            name: "Snappable",
            dependencies: [
                .product(name: "SwiftUIIntrospect", package: "swiftui-introspect")
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "SnappableTests",
            dependencies: ["Snappable"],
            path: "Tests"
        ),
    ]
)
