//
//  Day10.swift
//  100DaysOfSwiftUI
//
//  Created by Paulo Henrique on 19/06/24.
//

import Foundation

struct Day10: Day {
    static func main() {
        struct Album {
            let title: String
            let artist: String
            let year: Int
            func printSummary() {
                print("\(title) \(year) by \(artist)")
            }
        }
        
        let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
        let wings = Album(title: "Wings", artist: "BTS", year: 2016)
        
        print(red.title)
        print(wings.artist)
        
        red.printSummary()
        wings.printSummary()
        
        struct Employee {
            let name: String
            var vacationRemaining: Int

            mutating func takeVacation(days: Int) {
                if vacationRemaining > days {
                    vacationRemaining -= days
                    print("I'm going on vacation!")
                    print("Days remaining: \(vacationRemaining)")
                } else {
                    print("Oops! There aren't enough days remaining.")
                }
            }
        }
        
        var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
        archer.takeVacation(days: 5)
        print(archer.vacationRemaining)
    } //tem um teste que menciona london e corrida KKKKKKK
}