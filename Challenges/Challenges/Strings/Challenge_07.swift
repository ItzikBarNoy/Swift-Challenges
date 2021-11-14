//
//  Challenge_07.swift
//  Challenges
//
//  Created by Itzik Isco Bar-Noy on 26/05/2021.
//  Copyright (c) 2021 fluxLoop AS, All rights reserved.
//


import Foundation

class Challenge_07 {

    init() {
        print("\nChallenge_07 (condenseWhitespace):\n----------------------------------\n")
        
        let str1 = "a   b   c"
        let str2 = "    a"
        let str3 = "abc"
        
        print("condenseWhitespace_V1 = \(condenseWhitespace_V1(input: str1))")
        print("condenseWhitespace_V1 = \(condenseWhitespace_V1(input: str2))")
        print("condenseWhitespace_V1 = \(condenseWhitespace_V1(input: str3))\n")
        
        print("condenseWhitespace_V2 = \(condenseWhitespace_V2(input: str1))")
        print("condenseWhitespace_V2 = \(condenseWhitespace_V2(input: str2))")
        print("condenseWhitespace_V2 = \(condenseWhitespace_V2(input: str3))\n")
    }
    
    func condenseWhitespace_V1(input: String) -> String {
        var result = ""
        var isSpaceAppeared = false
        
        for char in input {
            if char == " " && !isSpaceAppeared {
                result += "_"
                isSpaceAppeared = true
            } else if char != " " {
                result.append(char)
                isSpaceAppeared = false
            }
        }
        
        return result
    }
    
    func condenseWhitespace_V2(input: String) -> String {
        return input.replacingOccurrences(of: "   +", with: "_", options: .regularExpression)
    }
}
