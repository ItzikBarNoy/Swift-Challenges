//
//  Challenge_03.swift
//  Challenges
//
//  Created by Itzik Bar-Noy on 11/04/2021.
//


import Foundation

class Challenge_03 {
 
    init() {
        print("Challenge_03 (doesTwoStringsContainTheSameCharacters):\n------------------------------------------------------\n")
        
        let tuple1 = ("abca", "abca")
        let tuple2 = ("abc", "cba")
        let tuple3 = (" a1 b2 ", " b1 a2 ")
        let tuple4 = ("abc", "abca")
        let tuple5 = ("abc", "Abc")
        let tuple6 = ("abc", "cbAa")
        let tuple7 = ("abcc", "abca")
                
        print("doesTwoStringsContainTheSameCharacters_V1 =  \(doesTwoStringsContainTheSameCharacters_V1(input1: tuple1.0, input2: tuple1.1))")
        print("doesTwoStringsContainTheSameCharacters_V1 =  \(doesTwoStringsContainTheSameCharacters_V1(input1: tuple2.0, input2: tuple2.1))")
        print("doesTwoStringsContainTheSameCharacters_V1 =  \(doesTwoStringsContainTheSameCharacters_V1(input1: tuple3.0, input2: tuple3.1))")
        print("doesTwoStringsContainTheSameCharacters_V1 =  \(doesTwoStringsContainTheSameCharacters_V1(input1: tuple4.0, input2: tuple4.1))")
        print("doesTwoStringsContainTheSameCharacters_V1 =  \(doesTwoStringsContainTheSameCharacters_V1(input1: tuple5.0, input2: tuple5.1))")
        print("doesTwoStringsContainTheSameCharacters_V1 =  \(doesTwoStringsContainTheSameCharacters_V1(input1: tuple6.0, input2: tuple6.1))")
        print("doesTwoStringsContainTheSameCharacters_V1 =  \(doesTwoStringsContainTheSameCharacters_V1(input1: tuple7.0, input2: tuple7.1))\n")
        
        print("doesTwoStringsContainTheSameCharacters_V2 =  \(doesTwoStringsContainTheSameCharacters_V2(input1: tuple1.0, input2: tuple1.1))")
        print("doesTwoStringsContainTheSameCharacters_V2 =  \(doesTwoStringsContainTheSameCharacters_V2(input1: tuple2.0, input2: tuple2.1))")
        print("doesTwoStringsContainTheSameCharacters_V2 =  \(doesTwoStringsContainTheSameCharacters_V2(input1: tuple3.0, input2: tuple3.1))")
        print("doesTwoStringsContainTheSameCharacters_V2 =  \(doesTwoStringsContainTheSameCharacters_V2(input1: tuple4.0, input2: tuple4.1))")
        print("doesTwoStringsContainTheSameCharacters_V2 =  \(doesTwoStringsContainTheSameCharacters_V2(input1: tuple5.0, input2: tuple5.1))")
        print("doesTwoStringsContainTheSameCharacters_V2 =  \(doesTwoStringsContainTheSameCharacters_V2(input1: tuple6.0, input2: tuple6.1))")
        print("doesTwoStringsContainTheSameCharacters_V2 =  \(doesTwoStringsContainTheSameCharacters_V2(input1: tuple7.0, input2: tuple7.1))\n")
        
        print()
    }
    
    func doesTwoStringsContainTheSameCharacters_V1(input1: String, input2: String) -> Bool {
        var input2Copy = input2
        
        for char in input1 {
            if let index = input2Copy.firstIndex(of: char) {
                input2Copy.remove(at: index)
            } else {
                return false
            }
        }
        
        return input2Copy.count == 0
    }
    
    func doesTwoStringsContainTheSameCharacters_V2(input1: String, input2: String) -> Bool {
        return input1.sorted() == input2.sorted()
    }
}
