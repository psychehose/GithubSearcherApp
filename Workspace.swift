//
//  Workspace.swift
//  ProjectDescriptionHelpers
//
//  Created by 김호세 on 2022/07/02.
//

import ProjectDescription
import ProjectDescriptionHelpers

let workspace = Workspace(
    name: "Application",
    projects: [
        "Projects/Application",
        "Projects/Features",
        "Projects/Modules",
        "Projects/Network"
    ]
)
