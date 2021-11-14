//
//  Challenge_19.swift
//  Challenges
//
//  Created by Itzik Isco Bar-Noy on 01/08/2021.
//  Copyright (c) 2021 fluxLoop AS, All rights reserved.
//


import Foundation

class Challenge_19 {
    
    init() {
        print("\nChallenge_19 (sortAStringArrayByLengt):\n---------------------------------------\n")
        
        print("sortAStringArrayByLengt = \(["a", "abc", "ab"].sortAStringArrayByLengt())")
        print("sortAStringArrayByLengt = \(["Germany", "Israel", "Ivory coast"].sortAStringArrayByLengt())")
        print("sortAStringArrayByLengt = \([String]().sortAStringArrayByLengt())\n")
    }
}

extension Collection where Iterator.Element == String {
    func sortAStringArrayByLengt() -> [String] {
        return self.sorted(by: { $0.count > $1.count })
    }
}
