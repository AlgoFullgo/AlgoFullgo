//
//  DailyAlgoStatusView.swift
//  AlgoFullgoMain
//
//  Created by Jaewook Hwang on 2023/02/05.
//  Copyright © 2023 algofullgo.com. All rights reserved.
//

import SwiftUI

struct DailyAlgoStatusView: View {
  @Binding var dateAlphabet: String
  
  var body: some View {
    VStack {
      Text(dateAlphabet)
      Image("")
        .frame(width: 34, height: 34)
        .background {
          Circle()
        }
    }
  }
}

struct DailyAlgoStatusView_Previews: PreviewProvider {
  static var previews: some View {
    DailyAlgoStatusView(dateAlphabet: .constant("M"))
  }
}
