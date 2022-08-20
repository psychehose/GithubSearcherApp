//
//  Dependencies.swift
//  ProjectDescriptionHelpers
//
//  Created by KIM HOSE on 2022/06/30.
//

import ProjectDescription

let dependencies = Dependencies(
    carthage: [],
    swiftPackageManager: [
        .remote(url: "https://github.com/Alamofire/Alamofire", requirement: .revision("3a20cf97a7b37afeb035cdf0ff8634cb122eaef2")),
        .remote(url: "https://github.com/ReactorKit/ReactorKit", requirement: .revision("42be99d94328a100f718eddace6b01c7d3bed98c")),
        .remote(url: "https://github.com/ReactiveX/RxSwift", requirement: .revision("e0ab8c4e18baf6679a65b325155923276b832687")),
        .remote(url: "https://github.com/SnapKit/SnapKit", requirement: .revision("851bbf8dd838b31d5d64a659956a322be7a96eaa"))
    ],
    platforms: [.iOS]
)
