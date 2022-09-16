// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CLibUserSample",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/koher/clib-sample-a-swiftpm.git", branch: "main"),
        .package(url: "https://github.com/koher/clib-sample-b-swiftpm.git", branch: "main"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "CLibUserSwift",
            dependencies: [
                .product(name: "CLibSampleA", package: "clib-sample-a-swiftpm"),
                .product(name: "CLibSampleB", package: "clib-sample-b-swiftpm"),
            ]),
        .executableTarget(
            name: "CLibUserC",
            dependencies: [
                .product(name: "CLibSampleA", package: "clib-sample-a-swiftpm"),
                .product(name: "CLibSampleB", package: "clib-sample-b-swiftpm"),
            ]),
    ]
)
