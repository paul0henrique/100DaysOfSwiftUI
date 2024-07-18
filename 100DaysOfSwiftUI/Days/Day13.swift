//
//  Day13.swift
//  100DaysOfSwiftUI
//
//  Created by Paulo Henrique on 17/07/24.
//

import Foundation

struct Day13: Day {
    static func main() {
        
        struct Car: Vehicle {
            let name = "Car"
            var currentPassegers = 1
            
            func estimateTime(for distance: Int) -> Int {
                distance / 50
            }
            
            func travel(distance: Int) {
                print("I'm dridiving \(distance)km.")
            }
            
            func openSunroof() {
                print("It's a nice day!")
            }
        }
        
        func commute(distance: Int, using vehicle: Vehicle) {
            if vehicle.estimateTime(for: distance) > 100 {
                print("That's too slow! I'll try a different vehicle.")
            } else {
                vehicle.travel(distance: distance)
            }
        }
        
        protocol Vehicle {
            var name: String { get }
            var currentPassegers: Int { get set }
            func estimateTime(for distance: Int) -> Int
            func travel(distance: Int)
            
        }
        
        let car = Car()
        commute(distance: 100, using: car)
        
        struct Bicycle: Vehicle {
            let name = "Bicycle"
            var currentPassegers = 1
            
            func estimateTime(for distance: Int) -> Int {
                distance / 10
            }
            
            func travel(distance: Int) {
                print("I'm cycling \(distance)km.")
            }
        }
        
        let bike = Bicycle()
        commute(distance: 50, using: bike)
        
        func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
            for vehicle in vehicles {
                let estimate = vehicle.estimateTime(for: distance)
                print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
            }
        }
        
        getTravelEstimates(using: [car, bike], distance: 150)
        
        protocol Purchaseable {
            var name: String { get set }
        }
        
        struct Book: Purchaseable {
            var name: String
            var author: String
        }
        
        struct Movie: Purchaseable {
            var name: String
            var actors: [String]
        }
        
        struct Bus: Purchaseable {
            var name: String
            var manufacturer: String
        }
        
        struct Coffee: Purchaseable {
            var name: String
            var strength: Int
        }
        
        func buy(_ item: Purchaseable) {
            print("I'm buying \(item.name)")
        }
        
        func getRandomNumber() -> some Equatable {
            Int.random(in: 1...6)
        }
        
        func getRandomBool() -> some Equatable {
            Bool.random()
        }

    }
}
