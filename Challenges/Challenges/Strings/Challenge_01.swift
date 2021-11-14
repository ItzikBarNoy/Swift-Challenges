//
//  Challenge_01.swift
//  Challenges
//
//  Created by Itzik Bar-Noy on 21/03/2021.
//


import Foundation

class Challenge_01 {
    
    init() {
        print("Challenge_01 (areTheLettersUnique):\n-----------------------------------\n")

        let str1 = "No duplicates"
        let str2 = "abcdefghijklmnopqrstuvwxyz"
        let str3 = "AaBbCc"
        let str4 = "Hello world"
        
        print(str1 + " = \(areTheLettersUnique_V1(input: str1))")
        print(str2 + " = \(areTheLettersUnique_V1(input: str2))")
        print(str3 + " = \(areTheLettersUnique_V1(input: str3))")
        print(str4 + " = \(areTheLettersUnique_V1(input: str4))\n")
        
        print(str1 + " = \(areTheLettersUnique_V2(input: str1))")
        print(str2 + " = \(areTheLettersUnique_V2(input: str2))")
        print(str3 + " = \(areTheLettersUnique_V2(input: str3))")
        print(str4 + " = \(areTheLettersUnique_V2(input: str4))\n")
        
        print()
    }
    
    func areTheLettersUnique_V1(input: String) -> Bool {
        var lettersArray = [String.Element]()
        for char in input {
            if lettersArray.contains(char) {
                return false
            }
            
            lettersArray.append(char)
        }
        
        return true
    }
    
    func areTheLettersUnique_V2(input: String) -> Bool {
        return Set(input).count == input.count
    }
}
