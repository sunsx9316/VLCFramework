// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let vlcBinary = Target.binaryTarget(
    name: "VLCKit-all",
    url: "https://github.com/sunsx9316/VLCKit/releases/download/1.0.0/VLCKit.xcframework.zip",
    checksum: "20e79d17394ddd4ab4d96f7ad0c9b2ed0f3bcd79c256c4a27ab3e3f84c184c26"
)


let package = Package(
    name: "VLCKit",
    platforms: [.macOS(.v10_13), .iOS(.v11), .tvOS(.v11)],
    products: [
        .library(
            name: "VLCKit",
            targets: ["VLCKit"]),
    ],
    dependencies: [],
    targets: [
        vlcBinary,
        .target(
            name: "VLCKit",
            dependencies: [
                .target(name: "VLCKit-all")
            ], linkerSettings: [
                .linkedFramework("QuartzCore", .when(platforms: [.iOS])),
                .linkedFramework("CoreText", .when(platforms: [.iOS, .tvOS])),
                .linkedFramework("AVFoundation", .when(platforms: [.iOS, .tvOS])),
                .linkedFramework("Security", .when(platforms: [.iOS])),
                .linkedFramework("CFNetwork", .when(platforms: [.iOS])),
                .linkedFramework("AudioToolbox", .when(platforms: [.iOS, .tvOS])),
                .linkedFramework("OpenGLES", .when(platforms: [.iOS, .tvOS])),
                .linkedFramework("CoreGraphics", .when(platforms: [.iOS])),
                .linkedFramework("VideoToolbox", .when(platforms: [.iOS, .tvOS])),
                .linkedFramework("CoreMedia", .when(platforms: [.iOS, .tvOS])),
                .linkedLibrary("c++", .when(platforms: [.iOS, .tvOS])),
                .linkedLibrary("xml2", .when(platforms: [.iOS, .tvOS])),
                .linkedLibrary("z", .when(platforms: [.iOS, .tvOS])),
                .linkedLibrary("bz2", .when(platforms: [.iOS, .tvOS])),
                .linkedFramework("Foundation", .when(platforms: [.macOS])),
                .linkedLibrary("iconv")
            ]),
    ]
)