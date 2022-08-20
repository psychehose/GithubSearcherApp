//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by KIM HOSE on 2022/06/30.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "GithubSearcherApp",
    organizationName: "com.devhose",
    packages: [],
    targets: Project.appTargets(
        name: "GithubSearcherApp",
        appDependencies: [
            .project(
                target: "Features",
                path: .relativeToFeature("Features")
            )
        ],
        testDependencies: []
    ),
    schemes: [],
    additionalFiles: []
)
