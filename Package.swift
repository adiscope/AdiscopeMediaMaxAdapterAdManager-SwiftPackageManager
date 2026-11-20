// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaMaxAdapterAdManager",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AdiscopeMediaMaxAdapterAdManager",
            targets: ["AdiscopeMediaMaxAdapterAdManagerTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.2"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.11.0"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterAdManagerTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterAdManager"),
                .target(name: "AdiscopeMediaMaxAdapterAdManagerMediationAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdManager",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.6.0/AdiscopeMediaMaxAdapterAdManager.zip",
            checksum: "a24653536d2e7738aa618f61b57fcd0983f05c2aec195569fe69f40de6a35b1d"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterAdManagerMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.6.0/AppLovinMediationGoogleAdManagerAdapter.xcframework.zip",
            checksum: "b3a0ef8f27c025420b60d5bc02aee86572b9bacf7a4f185c33d37d6774f6c1f5"
        ),
    ]
)
