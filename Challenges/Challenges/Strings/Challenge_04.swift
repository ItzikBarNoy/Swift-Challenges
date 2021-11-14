//
//  Challenge_04.swift
//  Challenges
//
//  Created by Itzik Isco Bar-Noy on 25/04/2021.
//  Copyright (c) 2021 fluxLoop AS, All rights reserved.
//


import Foundation

class Challenge_04 {

    init() {
        print("Challenge_04 (myContains):\n--------------------------\n")
        
        let str: String = "Hello, world"
        
        print("myContains_V1 = \(str.myContains_V1(wordToCompare: "Hello"))")
        print("myContains_V1 = \(str.myContains_V1(wordToCompare: "WORLD"))")
        print("myContains_V1 = \(str.myContains_V1(wordToCompare: "Goodbye"))\n")
        
        print("myContains_V2 = \(str.myContains_V2(wordToCompare: "Hello"))")
        print("myContains_V2 = \(str.myContains_V2(wordToCompare: "WORLD"))")
        print("myContains_V2 = \(str.myContains_V2(wordToCompare: "Goodbye"))\n")
    }
}

extension String {
    func myContains_V1(wordToCompare: String) -> Bool {
        return self.lowercased().range(of: wordToCompare.lowercased()) != nil
    }
    
    func myContains_V2(wordToCompare: String) -> Bool {
        let count = self.lowercased().replacingOccurrences(of: wordToCompare.lowercased(), with: "").count
        return self.count != count
    }
}
