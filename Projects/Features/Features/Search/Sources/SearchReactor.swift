//
//  SearchReactor.swift
//  Search
//
//  Created by 김호세 on 2022/08/20.
//  Copyright © 2022 com.jstock. All rights reserved.
//

import ReactorKit

public final class SearchReactor: Reactor {

  public enum Action {

  }

  public struct State {
    var isLoading: Bool = true
  }

  public var initialState: State = State()



}
