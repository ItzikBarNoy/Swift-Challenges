//
//  Challenge_11.swift
//  Challenges
//
//  Created by Itzik Isco Bar-Noy on 20/06/2021.
//  Copyright (c) 2021 fluxLoop AS, All rights reserved.
//


import Foundation

class Challenge_11 {
    
    init() {
        print("\nChallenge_11:\n-------------\n")
        
        let tuple1 = (input1: "Clamp", input2: "Cramp")
        let tuple2 = (input1: "Clamp", input2: "Crams")
        let tuple3 = (input1: "Clamp", input2: "Grams")
        let tuple4 = (input1: "Clamp", input2: "Grans")
        let tuple5 = (input1: "Clamp", input2: "Clam")
        let tuple6 = (input1: "clamp", input2: "maple")
        
        print("threeDifferentLetters_V1 = \(threeDifferentLetters_V1(input1: tuple1.input1, input2: tuple1.input2))")
        print("threeDifferentLetters_V1 = \(threeDifferentLetters_V1(input1: tuple2.input1, input2: tuple2.input2))")
        print("threeDifferentLetters_V1 = \(threeDifferentLetters_V1(input1: tuple3.input1, input2: tuple3.input2))")
        print("threeDifferentLetters_V1 = \(threeDifferentLetters_V1(input1: tuple4.input1, input2: tuple4.input2))")
        print("threeDifferentLetters_V1 = \(threeDifferentLetters_V1(input1: tuple5.input1, input2: tuple5.input2))")
        print("threeDifferentLetters_V1 = \(threeDifferentLetters_V1(input1: tuple6.input1, input2: tuple6.input2))\n")
        
        print("threeDifferentLetters_V2 = \(threeDifferentLetters_V2(input1: tuple1.input1, input2: tuple1.input2))")
        print("threeDifferentLetters_V2 = \(threeDifferentLetters_V2(input1: tuple2.input1, input2: tuple2.input2))")
        print("threeDifferentLetters_V2 = \(threeDifferentLetters_V2(input1: tuple3.input1, input2: tuple3.input2))")
        print("threeDifferentLetters_V2 = \(threeDifferentLetters_V2(input1: tuple4.input1, input2: tuple4.input2))")
        print("threeDifferentLetters_V2 = \(threeDifferentLetters_V2(input1: tuple5.input1, input2: tuple5.input2))")
        print("threeDifferentLetters_V2 = \(threeDifferentLetters_V2(input1: tuple6.input1, input2: tuple6.input2))\n")
        
        print("threeDifferentLetters_V3 = \(threeDifferentLetters_V3(input1: tuple1.input1, input2: tuple1.input2))")
        print("threeDifferentLetters_V3 = \(threeDifferentLetters_V3(input1: tuple2.input1, input2: tuple2.input2))")
        print("threeDifferentLetters_V3 = \(threeDifferentLetters_V3(input1: tuple3.input1, input2: tuple3.input2))")
        print("threeDifferentLetters_V3 = \(threeDifferentLetters_V3(input1: tuple4.input1, input2: tuple4.input2))")
        print("threeDifferentLetters_V3 = \(threeDifferentLetters_V3(input1: tuple5.input1, input2: tuple5.input2))")
        print("threeDifferentLetters_V3 = \(threeDifferentLetters_V3(input1: tuple6.input1, input2: tuple6.input2))\n")
    }
    
    func threeDifferentLetters_V1(input1: String, input2: String) -> Bool {
        guard input1.count == input2.count else { return false }
        let array = Array(input2)
        var difference = 0
        
        for (index ,char) in input1.enumerated() {
            if char != array[index] {
                difference += 1
            }
            
            /// This line is for just for efficiency, in case that we have very long strings.
            if difference > 3 {
                return false
            }
        }
        
        return true
    }
    
    func threeDifferentLetters_V2(input1: String, input2: String) -> Bool {
        guard input1.count == input2.count else { return false }
        var difference = 0
        
        let array1 = input1.map { $0 }
        let array2 = input2.map { $0 }
        
        for index in 0..<array1.count {
            difference += (array1[index] != array2[index]) ? 1 : 0
            
            /// This line is for just for efficiency, in case that we have very long strings.
            if difference > 3 {
                return false
            }
        }
        
        return true
    }
    
    func threeDifferentLetters_V3(input1: String, input2: String) -> Bool {
        guard input1.count == input2.count else { return false }
        var difference = 0
        
        for(index, char) in input1.enumerated() {
            if char != input2[index] {
                difference += 1
            }
            
            /// This line is for just for efficiency, in case that we have very long strings.
            if difference > 3 {
                return false
            }
        }
        
        return true
    }
}

extension String {
    subscript(index: Int) -> String.Element {
        return self[self.index(startIndex, offsetBy: index)]
    }
}
