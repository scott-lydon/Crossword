//
//  ViewController.swift
//  Crossword
//
//  Created by Scott Lydon on 4/28/20.
//  Copyright © 2020 Scott Lydon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let crossword = [
            ["W", "P", "C"],
            ["T", "R", "A"],
            ["E", "A", "T"],
        ]
        print(crossword.answer(for: ["CAT", "EAR", "W"]))
    }
}

