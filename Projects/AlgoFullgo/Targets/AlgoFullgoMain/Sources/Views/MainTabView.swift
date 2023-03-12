//
//  MainTabView.swift
//  AlgoFullgoMain
//
//  Created by Jaewook Hwang on 2023/01/24.
//  Copyright © 2023 algofullgo.com. All rights reserved.
//

import SwiftUI

import ComposableArchitecture

public struct MainTabView: View {
  let store: StoreOf<MainTabFeature>
  
  public init(store: StoreOf<MainTabFeature>) {
    self.store = store
  }
  
  public var body: some View {

    WithViewStore(store, observe: { $0 }) { viewStore in
      TabView(
        selection: viewStore.binding(
          get: \.selectedTab,
          send: .selectTab
        )
      ) {
        MainView(
          store: StoreOf<MainFeature>(
            initialState: MainFeature.State(weeklyNumberOfAlgoProblem: 5),
            reducer: MainFeature()
          )
        )
        .tabItem {
          Image("tab_main_list_fill_icon")
          Text("리스트")
        }
        
        MainView(
          store: StoreOf<MainFeature>(
            initialState: MainFeature.State(weeklyNumberOfAlgoProblem: 5),
            reducer: MainFeature()
          )
        )
          .tabItem {
            Image("tab_settings_empty_icon")
            Text("설정")
          }
      }.ignoresSafeArea()
    }
  }
}

/*struct MainTabView_Previews: PreviewProvider {
  static var previews: some View {
    MainTabView(store: Store<MainTabBarState, MainTabBarAction>.init(initialState: MainTabBarState.init(selectedTab: .main), reducer: mainTabBarReducer))
  }
}*/
