import ProjectDescription
import ProjectDescriptionHelpers

let appName = "AlgoFullgo"

let infoPlist: [String: InfoPlist.Value] = [
    "CFBundleShortVersionString": "1.0.0",
    "CFBundleVersion": "1",
    "UILaunchScreens": [:]
]

let sharedDependencies: [TargetDependency] = [
    .target(name: "AlgoFullgoCore"),
    .external(name: "ComposableArchitecture")
]

var baseTarget = [
    Target(
        name: "AlgoFullgo",
        platform: .iOS,
        product: .app,
        bundleId: "com.algofullgo.\(appName)",
        deploymentTarget: .iOS(
          targetVersion: "15.5",
          devices: .iphone
        ),
        infoPlist: .extendingDefault(with: infoPlist),
        sources: ["Targets/\(appName)/Sources/**"],
        resources: ["Targets/\(appName)/Resources/**"],
        dependencies: [
            .target(name: "AlgoFullgoLogin"),
            .target(name: "AlgoFullgoMain"),
            .target(name: "AlgoFullgoDetail"),
            .target(name: "AlgoFullgoCreate"),
            .target(name: "AlgoFullgoSettings")
        ]
    )
]

let project = Project(
    name: appName,
    organizationName: "algofullgo.com",
    packages: [
        .remote(
            url: "https://github.com/pointfreeco/swift-composable-architecture.git",
            requirement: .upToNextMajor(from: "0.47.2")
        )
    ],
    targets: baseTarget
        .combine(with:
            Project.modularTarget(
                name: "AlgoFullgoCore",
                platform: .iOS,
                dependencies: []
            )
        )
        .combine(with:
            Project.modularTarget(
                name: "AlgoFullgoLogin",
                platform: .iOS,
                dependencies: sharedDependencies
            )
        )
        .combine(with:
            Project.modularTarget(
                name: "AlgoFullgoMain",
                platform: .iOS,
                dependencies: sharedDependencies
            )
        )
        .combine(with:
            Project.modularTarget(
                name: "AlgoFullgoDetail",
                platform: .iOS,
                dependencies: sharedDependencies
            )
        )
        .combine(with:
            Project.modularTarget(
                name: "AlgoFullgoCreate",
                platform: .iOS,
                dependencies: sharedDependencies
            )
        )
        .combine(with:
            Project.modularTarget(
                name: "AlgoFullgoSettings",
                platform: .iOS,
                dependencies: sharedDependencies
            )
        )
)
