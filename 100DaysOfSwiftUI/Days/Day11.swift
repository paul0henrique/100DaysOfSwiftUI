//
//  Day11.swift
//  100DaysOfSwiftUI
//
//  Created by Paulo Henrique on 12/07/24.
//

import Foundation

struct Day11: Day {
    static func main() {
        struct BankAccount {
            private(set) var funds = 700
            
            mutating func deposit(amount: Int) {
                funds += amount
            }
            
            mutating func withdraw(amount: Int) -> Bool {
                if funds >= amount {
                    funds -= amount
                    return true
                } else {
                    return false
                }
            }
        }
        
        var account = BankAccount()
        account.deposit(amount: 100)
        let success = account.withdraw(amount: 200)
        
        if success {
            print("Withdrew money successfully")
        } else {
            print("Failed to get the money")
        }
        
        struct School {
            static var studentCount = 0
            
            static func add(student: String) {
                print("\(student) joined the school.")
                studentCount += 1
            }
        }
        
        School.add(student: "Taylor Swift")
        print(School.studentCount)
        
        struct Employee {
            let username: String
            let password: String

            static let example = Employee(username: "cfederighi", password: "hairforceone")
        }
        
        struct Unwrap {
            static let appURL = "https://itunes.apple.com/app/id1440611372"
        }
        
    }
}
