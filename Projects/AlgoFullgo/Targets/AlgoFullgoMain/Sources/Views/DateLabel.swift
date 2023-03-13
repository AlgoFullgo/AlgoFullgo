//
//  DateLabel.swift
//  AlgoFullgoMain
//
//  Created by Jaewook Hwang on 2023/02/26.
//  Copyright © 2023 algofullgo.com. All rights reserved.
//

import SwiftUI

struct DateLabel: View {
  @Binding var dateInfo: DateComponents
  
  var body: some View {
    Text(
      "\($dateInfo.year).\($dateInfo.month).\($dateInfo.day)"
    )
      .foregroundColor(Color.normalAlgoGray)
  }
}

struct DateLabel_Preview: PreviewProvider {
  static var previews: some View {
    AlgoInfoCardView()
  }
}
