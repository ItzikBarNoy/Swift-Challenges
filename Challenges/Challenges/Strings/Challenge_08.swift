//
//  Challenge_08.swift
//  Challenges
//
//  Created by Itzik Isco Bar-Noy on 30/05/2021.
//  Copyright (c) 2021 fluxLoop AS, All rights reserved.
//


import Foundation

class Challenge_08 {
    
    init() {
        print("\nChallenge_08 (stringIsRotated):\n-------------------------------\n")
        
        let tuple1 = (str1: "abcde", str2: "eabcd")
        let tuple2 = (str1: "abcde", str2: "cdeab")
        let tuple3 = (str1: "abcde", str2: "abced")
        let tuple4 = (str1: "abc", str2: "a")
        
        print("stringIsRotated_V1 = \(stringIsRotated_V1(input1: tuple1.str1, input2: tuple1.str2))")
        print("stringIsRotated_V1 = \(stringIsRotated_V1(input1: tuple2.str1, input2: tuple2.str2))")
        print("stringIsRotated_V1 = \(stringIsRotated_V1(input1: tuple3.str1, input2: tuple3.str2))")
        print("stringIsRotated_V1 = \(stringIsRotated_V1(input1: tuple4.str1, input2: tuple4.str2))\n")
        
        print("stringIsRotated_V2 = \(stringIsRotated_V2(input1: tuple1.0, input2: tuple1.1))")
        print("stringIsRotated_V2 = \(stringIsRotated_V2(input1: tuple2.0, input2: tuple2.1))")
        print("stringIsRotated_V2 = \(stringIsRotated_V2(input1: tuple3.0, input2: tuple3.1))")
        print("stringIsRotated_V2 = \(stringIsRotated_V2(input1: tuple4.0, input2: tuple4.1))\n")
        
        print("stringIsRotated_V3 = \(stringIsRotated_V3(input1: tuple1.0, input2: tuple1.1))")
        print("stringIsRotated_V3 = \(stringIsRotated_V3(input1: tuple2.0, input2: tuple2.1))")
        print("stringIsRotated_V3 = \(stringIsRotated_V3(input1: tuple3.0, input2: tuple3.1))")
        print("stringIsRotated_V3 = \(stringIsRotated_V3(input1: tuple4.0, input2: tuple4.1))\n")
    }
    
    func stringIsRotated_V1(input1: String, input2: String) -> Bool {
        if input1.count == input2.count {
            return (input2 + input2).contains(input1)
        }
        
        return false
    }
    
    func stringIsRotated_V2(input1: String, input2: String) -> Bool {
        guard input1.count == input2.count else { return false }
        return String.init(repeating: input2, count: 2).range(of: input1) != nil
    }
    
    func stringIsRotated_V3(input1: String, input2: String) -> Bool {
        var input2Array = input2.map { $0 }
        for char in input2 {
            if String(input2Array) == input1 {
                return true
            }
            
            input2Array.remove(at: 0)
            input2Array.append(char)
        }
        
        return false
    }
}
