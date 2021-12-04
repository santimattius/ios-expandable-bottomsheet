//
//  LevelType.swift
//  ios-expandable-bottomsheet
//
//  Created by Santiago Mattiauda on 3/12/21.
//

import Foundation

import Foundation
import SwiftUI

enum LevelType: Int, CaseIterable {
    
    case beginner = 0
    case intermediate = 1
    case advanced = 2
    
    init(type: Int) {
        switch type {
        case 0:
            self = .beginner
        case 1:
            self = .intermediate
        case 2:
            self = .advanced
        default:
            self = .beginner
        }
    }
    
    var description : String {
        switch self {
        case .beginner:
            return "Beginner"
        case .intermediate:
            return "Intermediate"
        case .advanced:
            return "Advanced"
        }
    }
    
    var color : Color {
        switch self {
        case .beginner:
            return .green
        case .intermediate:
            return .yellow
        case .advanced:
            return .red
        }
    }
    
}

