//
//  String.swift
//  Crossword
//
//  Created by Scott Lydon on 4/28/20.
//  Copyright © 2020 Scott Lydon. All rights reserved.
//

import Foundation

extension String {
    
    /// O(1)
    subscript(safe range: ClosedRange<Int>) -> String {
        get {
            let start = String.Index(utf16Offset: range.lowerBound, in: self)
            let end = String.Index(utf16Offset: range.upperBound, in: self)
            return String(self[start...end])
        }
    }
    
    /// O(1)
    subscript(index: Int) -> String {
        get {
            let index = String.Index(utf16Offset: index, in: self)
            return String(self[index])
        }
    }
}
