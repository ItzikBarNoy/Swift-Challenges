//
//  Challenge_15.swift
//  Challenges
//
//  Created by Itzik Isco Bar-Noy on 01/08/2021.
//  Copyright (c) 2021 fluxLoop AS, All rights reserved.
//


import Foundation

class Challenge_15 {
    
    init() {
        print("\nChallenge_15 (countTheNumbers):\n-------------------------------\n")
        
        print("countTheNumbers_V1 = \([5, 15, 55, 515].countTheNumbers_V1(count: "5"))")
        print("countTheNumbers_V1 = \([5, 15, 55, 515].countTheNumbers_V1(count: "1"))")
        print("countTheNumbers_V1 = \([55555].countTheNumbers_V1(count: "5"))")
        print("countTheNumbers_V1 = \([55555].countTheNumbers_V1(count: "1"))\n")
        
        print("countTheNumbers_V2 = \([5, 15, 55, 515].countTheNumbers_V2(count: "5"))")
        print("countTheNumbers_V2 = \([5, 15, 55, 515].countTheNumbers_V2(count: "1"))")
        print("countTheNumbers_V2 = \([55555].countTheNumbers_V2(count: "5"))")
        print("countTheNumbers_V2 = \([55555].countTheNumbers_V2(count: "1"))\n")
    }
}

extension Array where Iterator.Element == Int {
    func countTheNumbers_V1(count: Character) -> Int {
        var total = 0
        for number in self {
            let str = String(number)
            for char in str {
                if char == count {
                    total += 1
                }
            }
        }
        
        return total
    }
}

extension Collection where Iterator.Element == Int {
    func countTheNumbers_V2(count: Character) -> Int {
        var total = 0
        let array = self.map { String($0) }
        array.forEach {
            total += $0.reduce(0) {
                $1 == count ? $0 + 1 : $0
            }
        }
        
        return total
    }
}
