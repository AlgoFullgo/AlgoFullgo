//
//  AlgoFullgoFont.swift
//  AlgoFullgo
//
//  Created by Jaewook Hwang on 2023/02/19.
//  Copyright © 2023 algofullgo.com. All rights reserved.
//

import SwiftUI

public enum AlgoFullgoFontType {
  case bold
  case medium
  case regular
  
  var fontName: String {
    switch self {
    case .regular:
      return "AppleSDGothicNeo-Regular"
    case .medium:
      return "AppleSDGothicNeo-Medium"
    case .bold:
      return "AppleSDGothicNeo-Bold"
    }
  }
}

public struct AlgoFullgoFont: ViewModifier {
  
  // MARK: - Properties
  
  var type: AlgoFullgoFontType
  
  var size: CGFloat
  
  // MARK: - Internal methods
  
  public func body(content: Content) -> some View {
    content.font(Font.custom(type.fontName, size: size))
  }
}
