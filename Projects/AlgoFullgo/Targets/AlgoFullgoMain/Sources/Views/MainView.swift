//
//  MainView.swift
//  AlgoFullgoMain
//
//  Created by Jaewook Hwang on 2023/01/24.
//  Copyright © 2023 algofullgo.com. All rights reserved.
//

import SwiftUI

import ComposableArchitecture

struct MainView: View {
  let store: StoreOf<MainFeature>
  
  var body: some View {
    ScrollView {
      VStack(alignment: .leading) {
        Text("지금까지\n총 NN개 문제를 풀었어요").frame(width: UIScreen.main.bounds.width)
      }
    }
  }
}

/*struct MainView_Previews: PreviewProvider {
 static var previews: some View {
 MainView()
 }
 }*/
