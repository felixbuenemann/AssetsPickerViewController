// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AssetsPickerViewController",
    defaultLocalization: "en",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "AssetsPickerViewController",
            targets: ["AssetsPickerViewController"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit", from: "5.0.0"),
        .package(url: "https://github.com/felixbuenemann/Device", from: "3.3.0")
    ],
    targets: [
        .target(
            name: "AssetsPickerViewController",
            dependencies: ["SnapKit", "Device"],
            path: "AssetsPickerViewController",
            sources: ["Classes"],
            resources: [.process("Assets")]
        )
    ],
    swiftLanguageVersions: [.v4_2, .v5]
)
