//
//  Challenge_99.swift
//  Challenges
//
//  Created by Itzik Isco Bar-Noy on 25/04/2021.
//  Copyright (c) 2021 fluxLoop AS, All rights reserved.
//


import Foundation

class Challenge_99 {

    init() {
        let number = 15618621684
        print("number = " + number.addThousandSepartor())
    }
}

extension Int {
    func addThousandSepartor() -> String {
        var number = self
        var stringNumber = ""
        var counter = 0
        
        while number > 0 {
            counter += 1
            stringNumber.append(String(number % 10))
            if counter % 3 == 0, number > 9 {
                stringNumber += ","
            }
            
            number /= 10
        }
        
        return String(stringNumber.reversed())
    }
}
