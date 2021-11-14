//
//  Challenge_14.swift
//  Challenges
//
//  Created by Itzik Isco Bar-Noy on 21/07/2021.
//  Copyright (c) 2021 fluxLoop AS, All rights reserved.
//


import Foundation

class Challenge_14 {
    
    init() {
        print("\nChallenge_14 (reverseTheWordsInAString):\n----------------------------------------\n")
        
        let str1 = "Swift Coding Challenges"
        let str2 = "The quick brown fox"
        
        print("reverseTheWordsInAString = \(reverseTheWordsInAString(input: str1))")
        print("reverseTheWordsInAString = \(reverseTheWordsInAString(input: str2))\n")
    }
    
    func reverseTheWordsInAString(input: String) -> String {
        let words = input.split(separator: " ")
        let reversedWords = words.map { String($0.reversed()) }
        return reversedWords.joined(separator: " ")
    }
}
