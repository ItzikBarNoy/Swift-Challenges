//
//  Challenge_02.swift
//  Challenges
//
//  Created by Itzik Bar-Noy on 04/04/2021.
//


import Foundation

class Challenge_02 {
    
    init() {
        print("Challenge_02 (isPalindrom):\n---------------------------\n")

        let str1 = "rotator"
        let str2 = "Rats live on no evil star"
        let str3 = "Never odd or even"
        let str4 = "Hello, world"
        
        print("isPalindrom: \(str1) = \(isPalindrom_V1(input: str1))")
        print("isPalindrom: \(str2) = \(isPalindrom_V1(input: str2))")
        print("isPalindrom: \(str3) = \(isPalindrom_V1(input: str3))")
        print("isPalindrom: \(str4) = \(isPalindrom_V1(input: str4))\n")
        
        print("isPalindrom: \(str1) = \(isPalindrom_V2(input: str1))")
        print("isPalindrom: \(str2) = \(isPalindrom_V2(input: str2))")
        print("isPalindrom: \(str3) = \(isPalindrom_V2(input: str3))")
        print("isPalindrom: \(str4) = \(isPalindrom_V2(input: str4))\n")
        
        print("isPalindrom: \(str1) = \(isPalindrom_V3(input: str1))")
        print("isPalindrom: \(str2) = \(isPalindrom_V3(input: str2))")
        print("isPalindrom: \(str3) = \(isPalindrom_V3(input: str3))")
        print("isPalindrom: \(str4) = \(isPalindrom_V3(input: str4))\n")
        
        print()
    }
    
    func isPalindrom_V1(input: String) -> Bool {
        let inputArray = input.map { String($0).lowercased() }
        var leftIndex = 0
        var rightIndex = input.count - 1
        
        while leftIndex < rightIndex {
            if inputArray[leftIndex] == inputArray[rightIndex] {
                leftIndex += 1
                rightIndex -= 1
            } else {
                return false
            }
        }
        
        return true
    }
    
    func isPalindrom_V2(input: String) -> Bool {
        let inputArray = input.map { String($0).lowercased() }
        var reversedInput = ""

        for index in stride(from: input.count, to: 0, by: -1) {
            reversedInput += inputArray[index - 1]
        }
        
        return input.lowercased() == reversedInput
    }
    
    func isPalindrom_V3(input: String) -> Bool {
        let lowercased = input.lowercased()
        return String(lowercased.reversed()) == lowercased
    }
}
