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
        
        let team = ["Paulo", "Bernardo", "Gabi", "João", "David", "Nicole"]
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
        
        func makeArray(size: Int, using generator: () -> Int) -> [Int] {
            var numbers = [Int]()
            
            for _ in 0..<size {
                let newNumber = generator()
                numbers.append(newNumber)
            }
            
            return numbers
        }
        
        let rolls = makeArray(size: 50) {
            Int.random(in: 1...20)
        }
        
        print(rolls)
        
        func generateNumber() -> Int {
            Int.random(in: 1...20)
        }
        
        let newRolls = makeArray(size: 10, using: generateNumber)
        print(newRolls)
        
        func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
            print("About to start first work")
            first()
            print("About to start second work")
            second()
            print("About to start third work")
            third()
            print("Done")
        }
        
        doImportantWork {
            print("This is the first work")
        } second: {
            print("This is the second work")
        } third: {
            print("This is the third work")
        }
        
        let swanDive = {
            print("SWAN DIVE!")
        }
        func performDive(type dive: () -> Void) {
            print("I'm climbing up to the top")
            dive()
        }
        performDive(type: swanDive)
        
        let helicopterTravel = {
            print("Get to the chopper!")
        }
        func travel(by travelMeans: () -> Void) {
            print("Let's go on vacation...")
            travelMeans()
        }
        travel(by: helicopterTravel)
        
        var learnWithUnwrap = {
            print("Hey, this is fun!")
        }
        func learnSwift(using approach: () -> Void) {
            print("I'm learning Swift")
            approach()
        }
        learnSwift(using: learnWithUnwrap)
    }
    
}
