//
//  WeeklyAlgoStatusView.swift
//  AlgoFullgoMain
//
//  Created by Jaewook Hwang on 2023/02/05.
//  Copyright © 2023 algofullgo.com. All rights reserved.
//

import SwiftUI

struct WeeklyAlgoStatusView: View {
  @Binding var weeklyNumberOfAlgoProblem: Int
  
  var body: some View {
    VStack(alignment: .leading) {
      HStack(spacing: 0) {
        Text("이번주 현황")
          .font(
            type: .bold,
            size: 18
          )
        Text(" \(weeklyNumberOfAlgoProblem)개")
          .font(
            type: .bold,
            size: 18
          )
          .foregroundColor(.deepAlgoGray)
      }.frame(
          maxWidth: .infinity,
          alignment: .leading
      )
      .padding(.leading, 20)
      
      HStack(spacing: 9.5) {
        ForEach(0..<7) { _ in
          DailyAlgoStatusView(dateAlphabet: .constant("M"))
        }
      }
      .frame(
        maxWidth: .infinity,
        alignment: .center
      )
      .padding(.top, 16)
    }
  }
}

struct WeeklyAlgoStatusView_Previews: PreviewProvider {
  static var previews: some View {
    WeeklyAlgoStatusView(weeklyNumberOfAlgoProblem: .constant(7))
  }
}
