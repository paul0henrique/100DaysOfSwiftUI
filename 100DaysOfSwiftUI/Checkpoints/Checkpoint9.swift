//
//  Checkpoint9.swift
//  100DaysOfSwiftUI
//
//  Created by Paulo Henrique on 23/07/24.
//

import Foundation

struct Checkpoint9: Day {
    static func main() {
        func generateRandomNumber(integers: [Int]?) -> Int {
            return integers?.randomElement() ?? Int.random(in: 1...100)
        }
        
        print("Random number in the range 1 through 100: \(generateRandomNumber(integers: []))")
        print("Random number from the given array: \(generateRandomNumber(integers: [3,4,5,8,20]))")
    }
}
