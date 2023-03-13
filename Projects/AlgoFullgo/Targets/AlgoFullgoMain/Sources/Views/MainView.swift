//
//  MainView.swift
//  AlgoFullgoMain
//
//  Created by Jaewook Hwang on 2023/01/24.
//  Copyright © 2023 algofullgo.com. All rights reserved.
//

import SwiftUI

import ComposableArchitecture

import AlgoFullgoCore

struct MainView: View {
  let store: StoreOf<MainFeature>
  
  var body: some View {
    ZStack {
      ScrollView {
        VStack(alignment: .leading) {
          Text("지금까지\n총 NN개 문제를 풀었어요")
            .font(type: .bold, size: 21)
            .padding(
              EdgeInsets(
                top: 32,
                leading: 20,
                bottom: 0,
                trailing: 20
              )
            )
          WeeklyAlgoStatusView(weeklyNumberOfAlgoProblem: .constant(5))
            .frame(width: 335, height: 150)
            .overlay(
              RoundedRectangle(cornerRadius: 8)
                .stroke(Color.lightAlgoGray, lineWidth: 1)
            )
        }
      }
      Button {
        
      } label: {
        Image("")
      }
    }
  }
}

/*struct MainView_Previews: PreviewProvider {
 static var previews: some View {
 MainView()
 }
 }*/
