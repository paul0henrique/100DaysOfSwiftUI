//
//  Checkpoint6.swift
//  100DaysOfSwiftUI
//
//  Created by Paulo Henrique on 12/07/24.
//

import Foundation
struct Checkpoint6: Day {
    static func main() {
        struct Car {
            let model: String
            let numberOfSeats: Int
            private(set) var currentGear = 8
            
            
            mutating func changeGearUp() {
                if currentGear + 1 > 10 {
                    print("Limit exceeded. You are already in the top gear!")
                } else {
                    currentGear += 1
                }
            }
            
            mutating func changeGearDown() {
                if currentGear - 1 < 1 {
                    print("Limit exceeded. You are already in the lowest gear!")
                } else {
                    currentGear -= 1
                }
            }
        }
        
        var car = Car(model: "BMW", numberOfSeats: 10)
        print(car.currentGear)
        car.changeGearUp()
        print(car.currentGear)
        car.changeGearDown()
        print(car.currentGear)
        
    }
}
