// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Tweaks",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Tweaks",
            targets: ["Tweaks"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Tweaks",
            dependencies: [],
            path: "FBTweak",
            exclude: [
				"FBTweak/Tweaks/README.md",
				"FBTweak/FBTweak-Prefix.pch",
            ],
            publicHeadersPath: "FBTweak"
        ),
        .testTarget(
            name: "TweaksTests",
            dependencies: ["Tweaks"],
            path: "FBTweakTests",
            exclude: [
				"FBTweakTests/FBTweakTests-Info.plist"
			]
        ),
    ]
)
