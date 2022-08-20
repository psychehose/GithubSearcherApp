//
//  GithubEntity.swift
//  Entity
//
//  Created by 김호세 on 2022/08/20.
//  Copyright © 2022 com.jstock. All rights reserved.
//

import Foundation


public enum GithubEntity {

    public struct GithubRepository: Hashable {
        public init(id: Int, name: String, url: String) {
            self.id = id
            self.name = name
            self.url = url
        }

        public let id: Int
        public let name: String
        public let url: String

        enum CodingKeys: String, CodingKey {
            case id
            case name
            case url = "html_url"
        }
    }
}



