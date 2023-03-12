//
//  AlgoInfoCardView.swift
//  AlgoFullgoMain
//
//  Created by Jaewook Hwang on 2023/02/19.
//  Copyright © 2023 algofullgo.com. All rights reserved.
//

import SwiftUI

struct AlgoInfoCardView: View {
  var body: some View {
    VStack {
      HStack { }
      Text("")
        .font(
          type: .bold,
          size: 16
        )
        .foregroundColor(Color.darkishDeepBlue)
      Text("")
        .font(
          type: .regular,
          size: 14
        )
        .foregroundColor(Color.textGray)
      Text("")
        .font(
          type: .regular,
          size: 14
        )
        .foregroundColor(Color.textGray)
    }
    .overlay(
      RoundedRectangle(cornerRadius: 8)
        .stroke(Color.lightAlgoGray, lineWidth: 1)
    )
  }
}

struct AlgoInfoCardView_Preview: PreviewProvider {
  static var previews: some View {
    AlgoInfoCardView()
  }
}
