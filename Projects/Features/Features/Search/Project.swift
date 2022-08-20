//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김호세 on 2022/08/20.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "Search",
    organizationName: "com.jstock",
    packages: [],
    targets: Project.staticLibrary(
        name: "Search",
        frameworkDependencies: [
            .project(target: "FeatureDependencies", path: .relativeToFeature("FeatureDependencies")),
        ],
        testDependencies: []
    ),
    schemes: []
)
