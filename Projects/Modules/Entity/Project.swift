//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by KIM HOSE on 2022/06/30.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "Entity",
    organizationName: "com.jstock",
    packages: [],
    targets: Project.staticLibrary(
        name: "Entity",
        frameworkDependencies: [],
        testDependencies: []
    ),
    schemes: []
)

