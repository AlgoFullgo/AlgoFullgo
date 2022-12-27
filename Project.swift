import ProjectDescription
import ProjectDescriptionHelpers
import AlgoFullgoPlugin

/*
                +-------------+
                |             |
                |     App     | Contains AlgoFullgo App target and AlgoFullgo unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

// Local plugin loaded
let localHelper = LocalHelper(name: "AlgoFullgoPlugin")

// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project = Project.app(
    name: "AlgoFullgo",
    platform: .iOS,
    additionalTargets: [
        "AlgoFullgoCore",
        "AlgoFullgoLogin",
        "AlgoFullgoMain",
        "AlgoFullgoCreate",
        "AlgoFullgoSettings"
    ]
)
