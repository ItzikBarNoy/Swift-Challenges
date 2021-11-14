//
//  Challenge_13.swift
//  Challenges
//
//  Created by Itzik Isco Bar-Noy on 14/07/2021.
//  Copyright (c) 2021 fluxLoop AS, All rights reserved.
//


import Foundation

class Challenge_13 {
    
    init() {
        print("\nChallenge_13 (runLengthEncoding):\n---------------------------------\n")
        
        let str1 = "aabbcc"
        let str2 = "aaabaaabaaa"
        let str3 = "aaAAaa"
        
        print("runLengthEncoding_V1 = \(runLengthEncoding_V1(input: str1))")
        print("runLengthEncoding_V1 = \(runLengthEncoding_V1(input: str2))")
        print("runLengthEncoding_V1 = \(runLengthEncoding_V1(input: str3))\n")
        
        print("runLengthEncoding_V2 = \(runLengthEncoding_V2(input: str1))")
        print("runLengthEncoding_V2 = \(runLengthEncoding_V2(input: str2))")
        print("runLengthEncoding_V2 = \(runLengthEncoding_V2(input: str3))\n")
    }
    
    func runLengthEncoding_V1(input: String) -> String {
        guard var character = input.first else { return "" }
        var reapetCharcterCounter = 0
        var result = ""
        
        for char in input {
            if char == character {
                reapetCharcterCounter += 1
            } else {
                result += "\(character)\(reapetCharcterCounter)"
                reapetCharcterCounter = 1
                character = char
            }
        }
        
        return result + "\(character)\(reapetCharcterCounter)"
    }
    
    func runLengthEncoding_V2(input: String) -> String {
        let array = Array(input)
        guard array.count >= 1 else { return "" }
        
        var result = "\(array.first!)"
        var reapetCharcterCounter = 1
        
        for index in 1..<array.count {
            if array[index - 1] == array[index] {
                reapetCharcterCounter += 1
            } else {
                result += "\(reapetCharcterCounter)\(array[index])"
                reapetCharcterCounter = 1
            }
        }

        return result + "\(reapetCharcterCounter)"
    }
}
