//
//  MainFeature.swift
//  AlgoFullgoMain
//
//  Created by Jaewook Hwang on 2023/01/24.
//  Copyright © 2023 algofullgo.com. All rights reserved.
//

import ComposableArchitecture

import SwiftUI

struct MainFeature: ReducerProtocol {
  struct State: Equatable {
    
  }
  
  enum Action: Equatable {
    
  }
  
  func reduce(
    into state: inout State,
    action: Action
  ) -> EffectTask<Action> {
    return .none
  }
}

