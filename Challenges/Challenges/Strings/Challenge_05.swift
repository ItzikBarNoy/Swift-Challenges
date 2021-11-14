//
//  Challenge_05.swift
//  Challenges
//
//  Created by Itzik Isco Bar-Noy on 18/04/2021.
//  Copyright (c) 2021 fluxLoop AS, All rights reserved.
//


import Foundation

class Challenge_05 {
    
    init() {
        print("\nChallenge_05 (countTheCharacters):\n----------------------------------\n")
        
        let tuple1 = ("I like animals", Character("a"))
        let tuple2 = ("Whatsupp", Character("p"))
        let tuple3 = ("Mississippi", Character("i"))
        
        print("countTheCharacters_V1 = \(countTheCharacters_V1(input1: tuple1.0, input2: tuple1.1))")
        print("countTheCharacters_V1 = \(countTheCharacters_V1(input1: tuple2.0, input2: tuple2.1))")
        print("countTheCharacters_V1 = \(countTheCharacters_V1(input1: tuple3.0, input2: tuple3.1))\n")
        
        print("countTheCharacters_V2 = \(countTheCharacters_V2(input1: tuple1.0, input2: tuple1.1))")
        print("countTheCharacters_V2 = \(countTheCharacters_V2(input1: tuple2.0, input2: tuple2.1))")
        print("countTheCharacters_V2 = \(countTheCharacters_V2(input1: tuple3.0, input2: tuple3.1))\n")
        
        print("countTheCharacters_V3 = \(countTheCharacters_V3(input1: tuple1.0, input2: tuple1.1))")
        print("countTheCharacters_V3 = \(countTheCharacters_V3(input1: tuple2.0, input2: tuple2.1))")
        print("countTheCharacters_V3 = \(countTheCharacters_V3(input1: tuple3.0, input2: tuple3.1))\n")
        
        print("countTheCharacters_V4 = \(countTheCharacters_V4(input1: tuple1.0, input2: tuple1.1))")
        print("countTheCharacters_V4 = \(countTheCharacters_V4(input1: tuple2.0, input2: tuple2.1))")
        print("countTheCharacters_V4 = \(countTheCharacters_V4(input1: tuple3.0, input2: tuple3.1))\n")
    }
    
    func countTheCharacters_V1(input1: String, input2: Character) -> Int {
        var counter = 0
        for char in input1 {
            if char == input2 {
                counter += 1
            }
        }
        
        return counter
    }
    
    func countTheCharacters_V2(input1: String, input2: Character) -> Int {
        return input1.count - input1.replacingOccurrences(of: String(input2), with: "").count
    }
    
    func countTheCharacters_V3(input1: String, input2: Character) -> Int {
        return input1.filter { $0 == input2 }.count
    }

    func countTheCharacters_V4(input1: String, input2: Character) -> Int {
        return input1.reduce(0) {
            $1 == input2 ? $0 + 1 : $0
        }
    }
}
