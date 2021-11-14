//
//  Challenge_06.swift
//  Challenges
//
//  Created by Itzik Isco Bar-Noy on 09/05/2021.
//  Copyright (c) 2021 fluxLoop AS, All rights reserved.
//


import Foundation

class Challenge_06 {
    
    init() {
        print("\nChallenge_06 (removeDuplicateLettersFromAString):\n-------------------------------------------------\n")
        
        let str1 = "wombat"
        let str2 = "hello"
        let str3 = "Mississippi"
        
        print("removeDuplicateLettersFromAString_V1: \(str1) ==> \(removeDuplicateLettersFromAString_V1(input: str1))")
        print("removeDuplicateLettersFromAString_V1: \(str2) ==> \(removeDuplicateLettersFromAString_V1(input: str2))")
        print("removeDuplicateLettersFromAString_V1: \(str3) ==> \(removeDuplicateLettersFromAString_V1(input: str3))\n")
        
        print("removeDuplicateLettersFromAString_V2: \(str1) ==> \(removeDuplicateLettersFromAString_V2(input: str1))")
        print("removeDuplicateLettersFromAString_V2: \(str2) ==> \(removeDuplicateLettersFromAString_V2(input: str2))")
        print("removeDuplicateLettersFromAString_V2: \(str3) ==> \(removeDuplicateLettersFromAString_V2(input: str3))\n")
        
        print("removeDuplicateLettersFromAString_V3: \(str1) ==> \(removeDuplicateLettersFromAString_V3(input: str1))")
        print("removeDuplicateLettersFromAString_V3: \(str2) ==> \(removeDuplicateLettersFromAString_V3(input: str2))")
        print("removeDuplicateLettersFromAString_V3: \(str3) ==> \(removeDuplicateLettersFromAString_V3(input: str3))\n")
    }
    
    func removeDuplicateLettersFromAString_V1(input: String) -> String {
        var characters = [String.Element]() // Same as [Character]
        for char in input {
            if !characters.contains(char) {
                characters.append(char)
            }
        }
                
        return String(characters)
    }
    
    func removeDuplicateLettersFromAString_V2(input: String) -> String {
        // Convert String to [String]
        let stringArray = input.map { String($0) }
        
        // Convert [String] to
        let set = NSOrderedSet(array: stringArray)
        
        // Convert NSOrderedSet back to [String]
        let letters = Array(set) as! Array<String>
        
        // Join togther all the cells from [String] and convert to regular String
        return letters.joined()
    }
    
    func removeDuplicateLettersFromAString_V3(input: String) -> String {
        return input.reduce("") {
            !$0.contains($1) ? $0 + String($1) : $0
        }
    }
}
