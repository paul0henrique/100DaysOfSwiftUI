//
//  Day7.swift
//  100DaysOfSwiftUI
//
//  Created by Paulo Henrique on 30/05/24.
//

import Foundation
struct Day7: Day {
    static func main() {
    
        func printTableTimes(number: Int, end: Int){
            for i in 1...end {
                print("\(i) x \(number) is \(i*number)")
            }
        }
        
        printTableTimes(number: 5, end: 10)
        
        func printNames(names: [String]){
            for name in names {
                print(name)
            }
        }
        
        printNames(names:["Paulo", "Bernardo", "Paul", "Gabi"])
        
        let root = sqrt(144)
        print(type(of: root))
        print(root)
        
        func rollDice() -> Int {
            return Int.random(in: 1...6)
        }
        
        let result = rollDice()
        print(result)
        
        func areStringsIdentical(string1: String, string2: String) -> Bool {
            string1.sorted() == string2.sorted()
        }
        
        print(areStringsIdentical(string1: "abc", string2: "acb"))
        
        func pythagoras(a: Double, b: Double) -> Double {
            sqrt(a * a + b * b)
        }
        
        let c = pythagoras(a: 3, b: 4)
        print(c)
        
        func allTestsPassed(tests: [Bool]) -> Bool {
            for test in tests {
                if test == false {
                    return false
                }
            }
            return true
        }
        
        print(allTestsPassed(tests: [true, false]))
    }
}
