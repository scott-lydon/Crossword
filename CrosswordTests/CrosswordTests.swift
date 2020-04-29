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
        InputOutput(input: [
            ["W", "P", "C"],
            ["T", "R", "A"],
            ["E", "A", "T"],
        ], input2: ["CAT", "EAR", "W"], output: [
            ["W", "", "C"],
            ["", "", "A"],
            ["", "", "T"],
        ]),
        InputOutput(input: [
            ["W", "P", "C"],
            ["T", "R", "A"],
            ["E", "A", "T"],
        ], input2: ["CATAMARAN", "EAR", "W"], output: [
            ["W", "", ""],
            ["", "", ""],
            ["", "", ""],
        ]),
    ]
    
    
    func testCrossword() {
        inputOutputs.forEach {
            XCTAssert($0.input.answer(for: $0.input2) == $0.output)
        }
    }

}
