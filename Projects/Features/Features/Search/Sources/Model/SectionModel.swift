//
//  SectionModel.swift
//  Search
//
//  Created by 김호세 on 2022/08/20.
//  Copyright © 2022 com.jstock. All rights reserved.
//

import Foundation
import Entity

public enum Section: CaseIterable {
  case main
}

public enum Item: Hashable {
  case repository(repository: GithubEntity.GithubRepository)
}


extension Item {
  static func generateItem() -> [Item] {
    return [
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      Item.repository(repository: generateMockRepo()),
      
    ]
  }

  static func generateMockRepo() -> GithubEntity.GithubRepository {
    return GithubEntity.GithubRepository(
      id: Int.random(in: .min ... .max),
      name: "\(Int.random(in: .min ... .max))",
      url: "\(Int.random(in: .min ... .max))"
    )
  }
}
