//
//  Checkpoint3.swift
//  100DaysOfSwiftUI
//
//  Created by Paulo Henrique on 28/05/24.
//

import Foundation

struct Checkpoint3: Day {
    static func main() {
        for i in 1...100 {
            if i.isMultiple(of: 3) && i.isMultiple(of: 5){
                print("FizzBuzz")
            }
            else if i.isMultiple(of: 3){
                print("Fizz")
            }
            else if i.isMultiple(of: 5){
                print("Buzz")
            }
            else {
                print(i)
            }
        }
    }
}
