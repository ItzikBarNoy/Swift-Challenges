//
//  Challenge_16.swift
//  Challenges
//
//  Created by Itzik Isco Bar-Noy on 01/08/2021.
//  Copyright (c) 2021 fluxLoop AS, All rights reserved.
//


import Foundation

class Challenge_16 {
    
    init() {
        print("\nChallenge_16 (integerDisguisedAsString):\n----------------------------------------\n")
        
        let num1 = "01010101"
        let num2 = "123456789"
        let num3 = "9223372036854775808"
        let num4 = "1.01"
        
        print("integerDisguisedAsString_V1 = \(integerDisguisedAsString_V1(input: num1))")
        print("integerDisguisedAsString_V1 = \(integerDisguisedAsString_V1(input: num2))")
        print("integerDisguisedAsString_V1 = \(integerDisguisedAsString_V1(input: num3))")
        print("integerDisguisedAsString_V1 = \(integerDisguisedAsString_V1(input: num4))\n")
        
        print("integerDisguisedAsString_V2 = \(integerDisguisedAsString_V2(input: num1))")
        print("integerDisguisedAsString_V2 = \(integerDisguisedAsString_V2(input: num2))")
        print("integerDisguisedAsString_V2 = \(integerDisguisedAsString_V2(input: num3))")
        print("integerDisguisedAsString_V2 = \(integerDisguisedAsString_V2(input: num4))\n")

        print("integerDisguisedAsString_V3 = \(integerDisguisedAsString_V3(input: num1))")
        print("integerDisguisedAsString_V3 = \(integerDisguisedAsString_V3(input: num2))")
        print("integerDisguisedAsString_V3 = \(integerDisguisedAsString_V3(input: num3))")
        print("integerDisguisedAsString_V3 = \(integerDisguisedAsString_V3(input: num4))\n")
        
        print("integerDisguisedAsString_V4 = \(integerDisguisedAsString_V4(input: num1))")
        print("integerDisguisedAsString_V4 = \(integerDisguisedAsString_V4(input: num2))")
        print("integerDisguisedAsString_V4 = \(integerDisguisedAsString_V4(input: num3))")
        print("integerDisguisedAsString_V4 = \(integerDisguisedAsString_V4(input: num4))\n")
    }
    
    
    /// This soultion won't work for number bigger than: 18,446,744,073,709,551,615
    func integerDisguisedAsString_V1(input: String) -> Bool {
        return UInt(input) != nil
    }
    
    func integerDisguisedAsString_V2(input: String) -> Bool {
        for char in input {
            if char < "0" || char > "9" {
                return false
            }
        }
        
        return true
    }
    
    func integerDisguisedAsString_V3(input: String) -> Bool {
        for char in input {
            if Int(String(char)) == nil {
                return false
            }
        }
        
        return true
    }
    
    func integerDisguisedAsString_V4(input: String) -> Bool {
        return input.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
    }
}
