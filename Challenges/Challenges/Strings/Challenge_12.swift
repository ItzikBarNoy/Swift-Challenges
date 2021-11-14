//
//  Challenge_12.swift
//  Challenges
//
//  Created by Itzik Isco Bar-Noy on 11/07/2021.
//  Copyright (c) 2021 fluxLoop AS, All rights reserved.
//


import Foundation

class Challenge_12 {
    
    init() {
        print("\nChallenge_12 (findLongestPrefix):\n---------------------------------\n")
        
        let str1 = "swift switch swill swim"
        let str2 = "flip flap flop"
        
        print("findLongestPrefix_V1 = \(findLongestPrefix_V1(input: str1))")
        print("findLongestPrefix_V1 = \(findLongestPrefix_V1(input: str2))\n")
        
        print("findLongestPrefix_V2 = \(findLongestPrefix_V2(input: str1))")
        print("findLongestPrefix_V2 = \(findLongestPrefix_V2(input: str2))\n")
    }
    
    func findLongestPrefix_V1(input: String) -> String {
        let array = input.split(separator: " ")
        guard array.first != nil else { return "" }
        let shortestWord = array.sorted { $0.count < $1.count }.first!

        var prefix = ""
        for (index, char) in shortestWord.enumerated() {
            for word in array {
                if char != word[word.index(word.startIndex, offsetBy: index)] {
                    return prefix
                }
            }
            
            prefix.append(char)
        }
        
        return prefix
    }
    
    func findLongestPrefix_V2(input: String) -> String {
        let array = input.split(separator: " ")
        guard let firstWord = array.first else { return "" }
        
        var prefix = ""
        for maxLength in 1...firstWord.count {
            for word in array {
                if !word.hasPrefix(firstWord.prefix(maxLength)) {
                    return prefix
                }
            }
            
            prefix = String(firstWord.prefix(maxLength))
        }
        
        return prefix
    }
}
