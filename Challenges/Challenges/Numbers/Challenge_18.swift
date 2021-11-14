//
//  Challenge_18.swift
//  Challenges
//
//  Created by Itzik Isco Bar-Noy on 08/08/2021.
//  Copyright (c) 2021 fluxLoop AS, All rights reserved.
//


import Foundation

class Challenge_18 {
    
    init() {
        print("\nChallenge_18 (subtractWithoutSubtract):\n---------------------------------------\n")
        
        print("subtractWithoutSubtract = \(subtractWithoutSubtract(subtract: 5, from: 9))")
        print("subtractWithoutSubtract = \(subtractWithoutSubtract(subtract: 10, from: 30))\n")
    }
    
    func subtractWithoutSubtract(subtract: UInt, from: UInt) -> UInt {
        var result: UInt = 0
        
        for _ in subtract..<from {
            result += 1
        }
        
        return result
    }
}
