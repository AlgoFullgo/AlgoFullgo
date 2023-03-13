//
//  AlgoBriefInfo.swift
//  AlgoFullgoMain
//
//  Created by Jaewook Hwang on 2023/02/26.
//  Copyright © 2023 algofullgo.com. All rights reserved.
//

import Foundation

enum AlgoStatus: Int {
  case solved = 1
}

struct AlgoBriefInfo {
  let status: AlgoStatus
  let createdAt: String
  let title: String
  let description: String
  let tags: [String]
}
