//
//  Checkpoint8.swift
//  100DaysOfSwiftUI
//
//  Created by Paulo Henrique on 19/07/24.
//

import Foundation
struct Checkpoint8: Day {
    static func main() {
        protocol Building {
            var rooms: Int { get }
            var cost: Int { get }
            var agent: String { get }
            
            func printSummary()
            
        }
        
        struct House: Building {
            var rooms = 10
            var cost = 100_000
            var agent = "Peter"
            
            func printSummary() {
                print("Agent: \(agent) | Cost: \(cost) | Rooms: \(rooms)")
            }
        }
        
        struct Office: Building {
            var rooms = 40
            var cost = 1_000_000
            var agent = "Peter"
            
            func printSummary() {
                print("Agent: \(agent) | Cost: \(cost) | Rooms: \(rooms)")
            }
        }
        
        let house1 = House()
        house1.printSummary()
        
        let office1 = Office()
        office1.printSummary()
    }
}
