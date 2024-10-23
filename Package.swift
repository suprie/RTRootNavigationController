// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "RTRootNavigationController",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "RTRootNavigationController",
            targets: ["RTRootNavigationController"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "RTRootNavigationController",
            dependencies: [],
            path: "RTRootNavigationController/Classes",
            resources: []
        ),
    ]
)
