//
//  Challenge_10.swift
//  Challenges
//
//  Created by Itzik Isco Bar-Noy on 16/06/2021.
//  Copyright (c) 2021 fluxLoop AS, All rights reserved.
//


import Foundation

class Challenge_10 {
    
    typealias tuple = (vowels: Int, consonants: Int)
    
    init() {
        print("\nChallenge_10 (vowelsAndConsonants):\n-----------------------------------\n")

        let str1 = "Swift Coding Challenges"
        let str2 = "Mississippi"
        
        print("vowelsAndConsonants_V1 = \(vowelsAndConsonants_V1(input: str1))")
        print("vowelsAndConsonants_V1 = \(vowelsAndConsonants_V1(input: str2))\n")
        
        print("vowelsAndConsonants_V2 = \(vowelsAndConsonants_V2(input: str1))")
        print("vowelsAndConsonants_V2 = \(vowelsAndConsonants_V2(input: str2))\n")

        print("vowelsAndConsonants_V3 = \(vowelsAndConsonants_V3(input: str1))")
        print("vowelsAndConsonants_V3 = \(vowelsAndConsonants_V3(input: str2))\n")
    }
    
    func vowelsAndConsonants_V1(input: String) -> tuple {
        let vowels = "aeiou"
        let consonants = "bcdfghjklmnpqrstvwxyz"
        var tuple = tuple(0, 0)
        
        for char in input.lowercased() {
            if vowels.contains(char) {
                tuple.vowels += 1
            }
            if consonants.contains(char) {
                tuple.consonants += 1
            }
        }
        
        return tuple
    }
    
    func vowelsAndConsonants_V2(input: String) -> tuple {
        let vowels = "aeiou"
        let letters = input.lowercased().filter { $0 >= "a" && $0 <= "z" }
        var tuple = tuple(0, 0)

        for letter in letters {
            if vowels.contains(letter) {
                tuple.vowels += 1
            } else {
                tuple.consonants += 1
            }
        }
        
        return tuple
    }
    
    func vowelsAndConsonants_V3(input: String) -> tuple {
        let vowels = "aeiou"
        let letters = input.lowercased().filter { $0 >= "a" && $0 <= "z" }
        var tuple = tuple(0, 0)
        
        tuple.vowels += letters.filter { vowels.contains($0) }.count
        tuple.consonants = letters.count - tuple.vowels
        
        return tuple
    }
}
