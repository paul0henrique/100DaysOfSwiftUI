//
//  Day12.swift
//  100DaysOfSwiftUI
//
//  Created by Paulo Henrique on 15/07/24.
//

import Foundation
struct Day12: Day {
    static func main() {
        class Game {
            var score = 0 {
                didSet {
                    print("Score is now \(score)")
                }
            }
        }
        
        var newGame = Game()
        newGame.score += 10
        newGame.score += 15
        
        class Employee {
            let hours: Int
            
            init(hours: Int){
                self.hours = hours
            }
            
            func printSummary() {
                print("I work \(hours) hours a day.")
            }
        }
        
        class Developer: Employee {
            func work() {
                print("I'm writing code for \(hours) hours.")
            }
            
            override func printSummary() {
                print("I'm a developer who will somestimes work \(hours) a day, but other times spend hours arguing about whether code chould be indented using tabs or spaces.")
            }
        }
        
        class Manager: Employee {
            func work() {
                print("I'm going to meetings for \(hours) hours.")
            }
        }
        
        let robert = Developer(hours: 8)
        let joseph = Manager(hours: 10)
        
        robert.work()
        joseph.work()
        
        let novall = Developer(hours: 8)
        novall.printSummary()
        
        let ph = Manager(hours: 5)
        ph.printSummary()
        
        class Vehicle {
            let isEletric: Bool
            
            init(isEletric: Bool) {
                self.isEletric = isEletric
            }
        }
        
        class Car: Vehicle {
            let isConvertible: Bool
            
            init(isEletric: Bool, isConvertible: Bool) {
                self.isConvertible = isConvertible
                super.init(isEletric: isEletric)
            }
        }
        
        let teslaX = Car(isEletric: true, isConvertible: false)
        
        class User {
            var username = "Anonymous"
            
            func copy() -> User {
                let user = User()
                user.username = username
                return user
            }
        }
        
        var user1 = User()
        
        var user2 = user1.copy()
        user2.username = "Taylor"
        
        print(user1.username)
        print(user2.username)
    }
}
