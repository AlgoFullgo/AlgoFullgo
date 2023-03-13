//
//  Text+ViewModifier.swift
//  AlgoFullgo
//
//  Created by Jaewook Hwang on 2023/02/19.
//  Copyright © 2023 algofullgo.com. All rights reserved.
//

import SwiftUI

public extension Text {
  func font(
    type: AlgoFullgoFontType,
    size: CGFloat
  ) -> ModifiedContent<Text, AlgoFullgoFont> {
    return self
      .modifier(
        AlgoFullgoFont(
          type: type,
          size: size
        )
      )
  }
}
