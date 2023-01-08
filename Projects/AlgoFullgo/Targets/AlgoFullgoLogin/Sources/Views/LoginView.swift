//
//  LoginView.swift
//  AlgoFullgoLogin
//
//  Created by Jaewook Hwang on 2023/01/08.
//  Copyright © 2023 algofullgo.com. All rights reserved.
//

import SwiftUI

// TODO: Core로 이동 예정
public protocol OAuthAuthorizable {
  func authorize()
}

import ComposableArchitecture

public struct LoginView: View {
  let store: Store<LoginFeature.State, LoginFeature.Action>
  
  let coordinator: OAuthAuthorizable
  
  // TODO: Store도 DI 하려고 보니 protocol 처리로 못해서 access control 이슈가 있음 수정 필요
  public init(
    coordinator: OAuthAuthorizable
  ) {
    self.store = Store<LoginFeature.State, LoginFeature.Action>.init(
      initialState: LoginFeature.State(),
      reducer: LoginFeature()
    )
    self.coordinator = coordinator
  }
  
  public var body: some View {
    VStack {
      Image("")
      Image("")
      Button {
        self.coordinator.authorize()
      } label: {
        Text("Apple로 시작하기")
          .background(Color.blue)
          .frame(
            width: 335,
            height: 56,
            alignment: .center
          )
      }
    }
    
    // TODO: Compile Error 수정 필요
    /*WithViewStore(self.store) { state in
      print(state)
    } content: { viewStore in
      
    }*/
  }
}

struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
    LoginView(coordinator: AppleLoginCoordinator())
  }
}
