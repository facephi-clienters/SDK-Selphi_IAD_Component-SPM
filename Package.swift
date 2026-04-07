// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SDK-Selphi_component-SPM",
    defaultLocalization: "en",
    platforms: [.iOS(.v9)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SDK-Selphi_component-SPM",
            targets: ["SDK-Selphi_component-SPM", "selphiComponent"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "git@github.com:facephi-clienters/SDK-CorePackage-SPM.git", .exactItem("2.7.0")),
        .package(url: "git@github.com:facephi-clienters/Selphi-IAD-SPM.git", .upToNextMinor(from: "6.1.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SDK-Selphi_component-SPM",
            dependencies: ["SDK-CorePackage-SPM", "Selphi-IAD-SPM", "selphiComponent"]),
        .binaryTarget(name: "selphiComponent",
        url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/SDK/FPHISDKSelphiIADComponent/2.7.0/selphiComponent.zip",
        checksum: "d806ff30341ee826207580e82241de57731eec9fa76d5256d06acc5c2fb33a9e")
    ]
)
