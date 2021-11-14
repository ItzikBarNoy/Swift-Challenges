//
//  Challenge_09.swift
//  Challenges
//
//  Created by Itzik Isco Bar-Noy on 26/05/2021.
//  Copyright (c) 2021 fluxLoop AS, All rights reserved.
//


import Foundation

class Challenge_09 {
    
    init() {
        print("\nChallenge_09 (findPangrams):\n----------------------------\n")
        
        let str1 = "The quick brown fox jumps over the lazy dog"
        let str2 = "The quick brown fox jumped over the lazy dog"
        
        print("findPangrams_V1 = \(findPangrams_V1(input: str1))")
        print("findPangrams_V1 = \(findPangrams_V1(input: str2))\n")
        
        print("findPangrams_V2 = \(findPangrams_V2(input: str1))")
        print("findPangrams_V2 = \(findPangrams_V2(input: str2))\n")
        
        print("findPangrams_V3 = \(findPangrams_V3(input: str1))")
        print("findPangrams_V3 = \(findPangrams_V3(input: str2))\n")
    }
    
    func findPangrams_V1(input: String) -> Bool {
        let stringToArray = Set(input.lowercased()).map { String($0) }.sorted()
        return stringToArray.joined().contains("abcdefghijklmnopqrstuvwxyz")
    }
    
    func findPangrams_V2(input: String) -> Bool {
        let lettersSet = Set(input.lowercased())
        return lettersSet.filter({ $0 >= "a" && $0 <= "z" }).count == 26
    }
    
    func findPangrams_V3(input: String) -> Bool {
        let lettersSet = Set(input.lowercased())
        return lettersSet.filter({ $0 >= Character(UnicodeScalar(97)) && $0 <= Character(UnicodeScalar(122)) }).count == 26
    }
}
