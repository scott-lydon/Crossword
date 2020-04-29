//
//  CrosswordTests.swift
//  CrosswordTests
//
//  Created by Scott Lydon on 4/28/20.
//  Copyright © 2020 Scott Lydon. All rights reserved.
//

import XCTest
@testable import Crossword

class CrosswordTests: XCTestCase {
    
    struct InputOutput<Input1, Input2, Output> {
        let input: Input1
        let input2: Input2
        let output: Output
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    var inputOutputs: [InputOutput<Crossword, [String], Crossword>] = [
        InputOutput(input: [], input2: [], output: []),
        // case with a single letter word matching and a non matching word and a multi letter word that matches.
        InputOutput(input: [
            ["W", "P", "C"],
            ["T", "R", "A"],
            ["E", "A", "T"],
        ], input2: ["CAT", "EAR", "W"], output: [
            ["W", "", "C"],
            ["", "", "A"],
            ["", "", "T"],
        ]),
        // case with only a single letter word matching, and excluding a word that exceeds the bounds of the matrix
        InputOutput(input: [
            ["W", "P", "C"],
            ["T", "R", "A"],
            ["E", "A", "T"],
        ], input2: ["CATAMARAN", "EAR", "W"], output: [
            ["W", "", ""],
            ["", "", ""],
            ["", "", ""],
        ]),
        // Recommended case
        InputOutput(input: [
            ["W", "P", "C"],
            ["T", "R", "A"],
            ["E", "A", "T"],
        ], input2: ["CAT", "EAR"], output: [
            ["", "", "C"],
            ["", "", "A"],
            ["", "", "T"],
        ]),
        // Empty crossword
        InputOutput(input: [], input2: ["CAT", "EAR"], output: []),
        // Empty input
        InputOutput(input: [
            ["W", "P", "C"],
            ["T", "R", "A"],
            ["E", "A", "T"],
        ], input2: [], output: [
            ["", "", ""],
            ["", "", ""],
            ["", "", ""],
        ]),
        // multiple matches
        InputOutput(input: [
            ["W", "P", "C"],
            ["T", "R", "A"],
            ["E", "A", "T"],
        ], input2: ["WTE", "WRT", "PRA", "CRE"], output: [
            ["W", "P", "C"],
            ["T", "R", ""],
            ["E", "A", "T"],
        ]),
        // a match going up
        InputOutput(input: [
            ["W", "P", "C"],
            ["T", "R", "A"],
            ["E", "A", "T"],
        ], input2: ["ETW"], output: [
            ["W", "", ""],
            ["T", "", ""],
            ["E", "", ""],
        ]),
        // a match going down
        InputOutput(input: [
            ["W", "P", "C"],
            ["T", "R", "A"],
            ["E", "A", "T"],
        ], input2: ["PRA"], output: [
            ["", "P", ""],
            ["", "R", ""],
            ["", "A", ""],
        ]),
        // a match going right
        InputOutput(input: [
            ["W", "P", "C"],
            ["T", "R", "A"],
            ["E", "A", "T"],
        ], input2: ["TRA"], output: [
            ["", "", ""],
            ["T", "R", "A"],
            ["", "", ""],
        ]),
        // a match going left
        InputOutput(input: [
            ["W", "P", "C"],
            ["T", "R", "A"],
            ["E", "A", "T"],
        ], input2: ["ART"], output: [
            ["", "", ""],
            ["T", "R", "A"],
            ["", "", ""],
        ]),
        // a match going up left
        InputOutput(input: [
            ["W", "P", "C"],
            ["T", "R", "A"],
            ["E", "A", "T"],
        ], input2: ["TRW"], output: [
            ["W", "", ""],
            ["", "R", ""],
            ["", "", "T"],
        ]),
        // a match going up right
        InputOutput(input: [
            ["W", "P", "C"],
            ["T", "R", "A"],
            ["E", "A", "T"],
        ], input2: ["ERC"], output: [
            ["", "", "C"],
            ["", "R", ""],
            ["E", "", ""],
        ]),
        // a match going down left
        InputOutput(input: [
            ["W", "P", "C"],
            ["T", "R", "A"],
            ["E", "A", "T"],
        ], input2: ["CRE"], output: [
            ["", "", "C"],
            ["", "R", ""],
            ["E", "", ""],
        ]),
        // a match going down right
        InputOutput(input: [
            ["W", "P", "C"],
            ["T", "R", "A"],
            ["E", "A", "T"],
        ], input2: ["WRT"], output: [
            ["W", "", ""],
            ["", "R", ""],
            ["", "", "T"],
        ]),
        
    ]
    
    
    func testCrossword() {
        inputOutputs.forEach {
            XCTAssert($0.input.answer(for: $0.input2) == $0.output)
        }
    }

}
