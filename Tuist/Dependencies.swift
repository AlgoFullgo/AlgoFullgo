//
//  Dependencies.swift
//  Config
//
//  Created by Jaewook Hwang on 2023/01/07.
//

import ProjectDescription
import ProjectDescriptionHelpers

let dependencies = Dependencies(
  carthage: nil,
  swiftPackageManager: SwiftPackageManagerDependencies(
    [
      .remote(
        url: "https://github.com/pointfreeco/swift-composable-architecture.git",
        requirement: .upToNextMajor(from: "0.48.1")
      )
    ]
  ),
  platforms: [.iOS]
)
