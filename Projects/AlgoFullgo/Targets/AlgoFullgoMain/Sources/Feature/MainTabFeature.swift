//
//  MainTabFeature.swift
//  AlgoFullgoMain
//
//  Created by Jaewook Hwang on 2023/01/24.
//  Copyright © 2023 algofullgo.com. All rights reserved.
//

import ComposableArchitecture

import SwiftUI

public struct MainTabFeature: ReducerProtocol {
  
  public init() {
    
  }
  
  public struct State: Equatable {
    
    public init() {
      
    }
    
    enum Tab: Int, Hashable {
      case main
      case settings
    }
    
    var selectedTab: Tab = .main
  }
  
  public enum Action: Equatable {
    case selectTab
  }
  
  public func reduce(
    into state: inout State,
    action: Action
  ) -> EffectTask<Action> {
    return .none
  }
}
