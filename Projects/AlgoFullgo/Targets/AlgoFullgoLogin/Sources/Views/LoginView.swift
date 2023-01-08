//
//  LoginView.swift
//  AlgoFullgoLogin
//
//  Created by Jaewook Hwang on 2023/01/08.
//  Copyright © 2023 algofullgo.com. All rights reserved.
//

import SwiftUI

// TODO: Core로 이동 예정
protocol OAuthAuthorizable {
  func authorize()
}

import ComposableArchitecture

struct LoginView: View {
  let store: Store<LoginFeature.State, LoginFeature.Action>
  
  let coordinator = AppleLoginCoordinator()
  
  var body: some View {
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
    LoginView(
      store: Store<LoginFeature.State, LoginFeature.Action>(
        initialState: LoginFeature.State(),
        reducer: LoginFeature())
    )
  }
}
