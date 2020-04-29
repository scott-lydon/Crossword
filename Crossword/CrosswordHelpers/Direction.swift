//
//  Direction.swift
//  Crossword
//
//  Created by Scott Lydon on 4/28/20.
//  Copyright © 2020 Scott Lydon. All rights reserved.
//

import Foundation

enum Direction: CaseIterable {
    case up
    case down
    case left
    case right
    case upright
    case upleft
    case downright
    case downleft
    
    /// O(1)
    var yIncrement: Int {
        switch self {
        case .up, .upleft, .upright:
            return -1
        case .left, .right:
            return 0
        case .down, .downright, .downleft:
            return 1
        }
    }
    
    /// O(1)
    var xIncrement: Int {
        switch self {
        case .up, .down:
            return 0
        case .left, .upleft, .downleft:
            return -1
        case .right, .upright, .downright:
            return  1
        }
    }
}
