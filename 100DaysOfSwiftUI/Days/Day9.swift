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
        
        let greetCopy = greetUser
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
        
        let team = ["Paulo", "Bernardo", "Gabi", "João", "David", "Teste"]
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
        
        let payment = { (user: String) -> Bool in
            print("Paying \(user)...")
            return true
        }
        
        let newPayment = { () -> Bool in
            print("Paying an anonymous person...")
            return true
        }
        
        print(newPayment())
        
        let reverseTeam = team.sorted {
            return $0 > $1
        }
        
        let tOnly = team.filter { $0.hasPrefix("T") }
        print(tOnly)
        
        let uppercaseTeam = team.map { $0.uppercased() }
        print(uppercaseTeam)
        
        // Trailling closures
        func animate(duration: Double, animations: () -> Void){
            print("Starting a \(duration) second animation...")
            animations()
        }
        
        animate(duration: 3){
            print("Fade out the image")
        }
    }
}
