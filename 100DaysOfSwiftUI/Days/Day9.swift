//
//  Day9.swift
//  100DaysOfSwiftUI
//
//  Created by Paulo Henrique on 09/06/24.
//

import Foundation
struct Day9: Day {
    static func main() {

        func greetUser() {
            print("Hi, there")
        }
        
        greetUser()
        
        var greetCopy = greetUser
        greetCopy()
        
        let sayHello = {
            print("Hello!")
        }
        
        sayHello()
        
        let sayHi = { (name: String) -> String in
            "Hi \(name)"
        }
        
        func getUserData(for id: Int) -> String {
            if id == 1989 {
                return "Taylor Swift"
            } else {
                return "Anonymous"
            }
        }
        
        let data: (Int) -> String = getUserData
        let user = data(1989)
        print(user)
        
        let team = ["Paulo", "Bernardo", "Gabi", "João", "David"]
        let sortedTeam = team.sorted()
        print(sortedTeam)
        
        let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
            if name1 == "Paulo" {
                return true
            } else if name2 == "Paulo" {
                return false
            }

            return name1 < name2
        })
        
        print(captainFirstTeam)
        
    }
}
