//
//  Challenge_17.swift
//  Challenges
//
//  Created by Itzik Isco Bar-Noy on 08/08/2021.
//  Copyright (c) 2021 fluxLoop AS, All rights reserved.
//


import Foundation

class Challenge_17 {
    
    init() {
        print("\nChallenge_17 (addNumbersInsideAString):\n---------------------------------------\n")
        
        let str1 = "a1b2c3"
        let str2 = "a10b20c30"
        let str3 = "h8ers"
        
        print("addNumbersInsideAString = \(addNumbersInsideAString(input: str1))")
        print("addNumbersInsideAString = \(addNumbersInsideAString(input: str2))")
        print("addNumbersInsideAString = \(addNumbersInsideAString(input: str3))")
    }
    
    func addNumbersInsideAString(input: String) -> Int {
        var currentNumberStr = ""
        var sum = 0
        
        for char in input {
            let str = String(char)
            if Int(str) != nil {
                currentNumberStr += str
            } else {
                sum += Int(currentNumberStr) ?? 0
                currentNumberStr = ""
            }
        }
        
        sum += Int(currentNumberStr) ?? 0
        return sum
    }
}
