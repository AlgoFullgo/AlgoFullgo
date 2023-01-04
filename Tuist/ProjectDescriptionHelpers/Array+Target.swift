//
//  Array+Target.swift
//  Config
//
//  Created by Jaewook Hwang on 2023/01/05.
//

import Foundation

import ProjectDescription

public extension Array where Element == Target {
    func combine(with targets: [Target]) -> [Target] {
        var copy = self
        copy.append(contentsOf: targets)
        return copy
    }
}
