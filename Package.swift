// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Fusion",
    products: [
        .library(
            name: "Media",
            targets: ["Media"]),
    ],
    dependencies: [
        //.package(name: "Android", url: "git@github.com:FLORG1/swift-android.git", .branch("master"))
        .package(name: "Android", path: "../swift-android")
    ],
    targets: [
        .target(
            name: "Media",
            dependencies: [
              .target(name: "Media_Common"),              
              .target(name: "Media_iOS", condition: .when(platforms: [.iOS, .macOS])),
              .target(name: "Media_Android", condition: .when(platforms: [.android])),
            ]            
        ),
        .target(
            name: "Media_Common"
        ),        
        .target(
            name: "Media_iOS",
            dependencies: [
              .target(name: "Media_Common"),
            ]                        
        ),            	
        .target(
            name: "Media_Android",
            dependencies: [
              .target(name: "Media_Common"),
              .product(name: "AndroidMedia", package: "Android", condition: .when(platforms: [.android]))
            ],
            resources: [.copy("Generated/Media.java")]
        )
    ]
)
