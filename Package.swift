// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "Platform",
    products: [
        .library(name: "Platform", targets: ["Platform"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/tris-foundation/test.git",
            .branch("master"))
    ],
    targets: [
        .target(name: "Platform"),
        .testTarget(name: "PlatformTests", dependencies: ["Platform", "Test"])
    ]
)
