//
//  LoginFeature.swift
//  AlgoFullgoLogin
//
//  Created by Jaewook Hwang on 2023/01/08.
//  Copyright © 2023 algofullgo.com. All rights reserved.
//

import Foundation

import ComposableArchitecture

struct LoginFeature: ReducerProtocol, Equatable {
  struct State: Equatable {
    
  }
  enum Action {
    case tapLoginButton
    case loginResult(Result<Any, Error>)
  }

  func reduce(into state: inout State, action: Action) -> EffectTask<Action> {
    switch action {
    case .tapLoginButton:
      return .none
    case let .loginResult(result):
      switch result {
      case let .success(userInfo):
        print(userInfo)
      case .failure:
        break
      }
      return .none
    }
  }
}

struct LoginEnvironment {
  var loginRequest: (JSONDecoder) -> Effect<Any, Error>
}
