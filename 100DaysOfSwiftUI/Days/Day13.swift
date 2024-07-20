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
        
        var quote = "   The truth is rarely pure and never simple   "
        //let trimmed = quote.trimmed()
        quote.trim()
        
        let lyrics = """
        But I keep cruising
        Can't stop, won't stop moving
        It's like I got this music in my mind
        Saying it's gonna be alright
        """

        print(lyrics.lines.count)
        
        let guests = ["Mario", "Luigi", "Peach"]
        
        if guests.isNotEmpty {
            print("Guest count: \(guests.count)")
        }
        
        let numbers = [4, 8, 15, 16]
        let allEven = numbers.allSatisfy { $0.isMultiple(of: 2) }
        
        let numbers2 = Set([4, 8, 15, 16])
        let allEven2 = numbers2.allSatisfy { $0.isMultiple(of: 2) }

        let numbers3 = ["four": 4, "eight": 8, "fifteen": 15, "sixteen": 16]
        let allEven3 = numbers3.allSatisfy { $0.value.isMultiple(of: 2) }
    }
}

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
    
}

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}
