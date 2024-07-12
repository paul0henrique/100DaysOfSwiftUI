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
        
        struct Game {
            var score = 0 {
                didSet {
                    print("Score is now \(score)")
                }
            }
        }
        
        var game = Game()
        game.score += 10
        game.score -= 3
        game.score += 1
        
        struct App {
            var contacts = [String]() {
                willSet {
                    print("Current value is: \(contacts)")
                    print("New value will be: \(newValue)")
                }
                
                didSet {
                    print("There are now \(contacts.count) contacts.")
                    print("Old value was \(oldValue)")
                }
            }
        }
        
        var app = App()
        app.contacts.append("Paulo")
        app.contacts.append("Gabi")
        app.contacts.append("Bernardo")
        
        struct Player {
            let name: String
            let number: Int
            
            init(name: String) {
                self.name = name
                number = Int.random(in: 1...9)
            }
        }
        
        let player = Player(name: "Megan R")
        print(player.name)
    }
    
}
