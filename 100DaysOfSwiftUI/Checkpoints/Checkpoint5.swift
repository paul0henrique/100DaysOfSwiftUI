//
//  Checkpoint5.swift
//  100DaysOfSwiftUI
//
//  Created by Paulo Henrique on 13/06/24.
//

import Foundation
struct Checkpoint5: Day {
    static func main() {
        let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
        
        let result = luckyNumbers.filter {!$0.isMultiple(of: 2)}.sorted().map{String($0)}
        
        for number in result {
            print("\(number) is a lucky number")
        }
    }
}
