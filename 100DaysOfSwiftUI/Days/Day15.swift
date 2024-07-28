//
//  Day15.swift
//  100DaysOfSwiftUI
//
//  Created by Paulo Henrique on 26/07/24.
//

import Foundation

struct Day15: Day {
    static func main() {
        
        // Variables
        let name = "Paulo"
        var age = 22
        
        print("Name: \(name) | Age: \(age)")
        let quote = "With great powers, comes great responsibility"
        
        print(quote.hasPrefix("W"))
        
        // Int
        let number = 15
        print(number.isMultiple(of: 3))
        
        let id = Int.random(in: 1...1000)
        print(id)
        
        // Arrays
        
        var academy = ["Regular", "Foundation", "Residência"]
        academy.append("Heroes")
        print(academy)
        print(academy.contains("Heroes2"))
        
        let employee = [
            "name": "Taylor",
            "job": "Singer"
        ]
        
        // Dictionaries
        print(employee["name", default: "Unknown"])
        print(employee["job", default: "Unknown"])
        
        // Sets
        var numbers = Set([1, 1, 3, 5, 7])
        print(numbers)
        
        // Enums
        enum Weekday {
            case monday, tuesday, wednesday, thursday, friday
        }
        
        var day = Weekday.monday
        print(day)
        day = .friday
        print(day)
        
        let score: Double = 0
        print(score)
        
        // Type anotations
        let player: String = "PH"
        let luckyNumber: Int = 5
        let pi: Double = 3.141
        let isEnabled: Bool = true
        let albums: Array<String> = ["Evolve", "Night Visions"]
        let user: Dictionary<String, String> = ["id": "@paulo.code"]
        let books: Set<String> = Set(["The Bluest Eye", "Foundation"])
        
        let albums2: [String] = ["Red", "Fearless"]
        let user2: [String: String] = ["id": "@paulo.code"]
        
        let teams: [String] = [String]()
        let clues = [String]()
        
        enum UIStyle {
            case light, dark, system
        }
        
        let style: UIStyle = .light
        
        print(player, luckyNumber, pi, isEnabled, albums, user, books, albums2, user2, teams, clues, style)
        
        // Conditionals
        
        let idade = 16
        if idade > 12 {
            print("You can't vote")
        } else if age < 18 {
            print("You can vote soon.")
        } else {
            print("You can vote now.")
        }
        
        
        enum Weather {
            case sun, rain, wind
        }
        
        let forecast = Weather.sun
        
        switch forecast {
        case .sun:
            print("A nice day.")
        case .rain:
            print("Pack an umbrella.")
        default:
            print("Should be okay.")
        }
        
        let idade3 = 18
        let canVote = age >= 18 ? "Yes" : "No"
        
        // Loops
        let platforms = ["iOS", "macOS", "tvOS", "watchOS"]
        
        
        for os in platforms {
            print("Swift works on \(os).")
        }
        
        for i in 1...10 {
            print("5 x \(i) is \(5 * i)")
        }
        
        var lyric = "Haters gonna"
        
        for _ in 1...5 {
            lyric += " hate"
        }
        
        print(lyric)
        
        var count = 10
        
        while count > 0 {
            print("\(count)...")
            count -= 1
        }
        
        print("Go!")
        
        let files = ["me.jpg", "work.txt", "sophie.jpg"]
        
        for file in files {
            if file.hasSuffix(".jpg") == false {
                continue
            }
            
            print("Found picture: \(file)")
        }
        
        // Functions
        
        func printTimeTables(number: Int) {
            for i in 1...12 {
                print("\(i) x \(number) is \(i * number)")
            }
        }
        
        printTimeTables(number: 5)
        
        //        func rollDice() -> Int {
        //            return Int.random(in: 1...6)
        //        }
        
        func rollDice() -> Int {
            Int.random(in: 1...6)
        }
        
        let result = rollDice()
        print(result)
        
        func getUser() -> (firstName: String, lastName: String) {
            (firstName: "Taylor", lastName: "Swift")
        }
        
        let user3 = getUser()
        print("Name: \(user3.firstName) \(user3.lastName)")
        
        let (firstName, _) = getUser()
        print("Name: \(firstName)")
        
        func isUppercase(_ string: String) -> Bool {
            string == string.uppercased()
        }
        
        let string = "HELLO, WORLD"
        let result2 = isUppercase(string)
        print(result2)
        
        func printTable(for number: Int) {
            for i in 1...12 {
                print("\(i) x \(number) is \(i * number)")
            }
        }
        
        printTable(for: 5)
        
        func greet(_ person: String, formal: Bool = false) {
            if formal {
                print("Welcome, \(person)!")
            } else {
                print("Hi, \(person)!")
            }
        }
        greet("Tim", formal: true)
        greet("Taylor")
        
        enum PasswordError: Error {
            case short, obvious
        }
        
        func checkPassword(_ password: String) throws -> String {
            if password.count < 5 {
                throw PasswordError.short
            }
            
            if password == "12345" {
                throw PasswordError.obvious
            }
            
            if password.count < 10 {
                return "OK"
            } else {
                return "Good"
            }
        }
        
        let string2 = "12345"
        
        do {
            let result = try checkPassword(string2)
            print("Rating: \(result)")
        } catch PasswordError.obvious {
            print("I have the same combination on my luggage!")
        } catch {
            print("There was an error.")
        }
        
        // Closures
        
        let sayHello = {
            print("Hi there!")
        }
        
        sayHello()
        
        let sayHello2 = { (name: String) -> String in
            "Hi \(name)!"
        }
        
        let team = ["Gloria", "Suzanne", "Tiffany", "Tasha"]
        
        let onlyT = team.filter({ (name: String) -> Bool in
            return name.hasPrefix("T")
        })
        
        print(onlyT)
        
        let onlyT2 = team.filter { name in
            name.hasPrefix("T")
        }
        
        let onlyT3 = team.filter {
            $0.hasPrefix("T")
        }
        
        // Structs
        
        struct Album {
            let title: String
            let artist: String
            var isReleased = true
            
            func printSummary() {
                print("\(title) by \(artist)")
            }
            
            mutating func removeFromSale() {
                isReleased = false
            }
        }
        
        let red = Album(title: "Red", artist: "Taylor Swift")
        print(red.title)
        red.printSummary()
        
        struct Employee {
            let name: String
            var vacationAllocated = 14
            var vacationTaken = 0
            
            var vacationRemaining: Int {
                get {
                    vacationAllocated - vacationTaken
                    
                }
                
                set {
                    vacationAllocated = vacationTaken + newValue
                }
            }
            
        }
        
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
        
        struct Player {
            let name: String
            let number: Int
            
            init(name: String) {
                self.name = name
                number = Int.random(in: 1...99)
            }
        }
        
        struct BankAccount {
            private(set) var funds = 0
            
            mutating func deposit(amount: Int) {
                funds += amount
            }
            
            mutating func withdraw(amount: Int) -> Bool {
                if funds > amount {
                    funds -= amount
                    return true
                } else {
                    return false
                }
            }
        }
        
        struct AppData {
            static let version = "1.3 beta 2"
            static let settings = "settings.json"
        }
        
        print(AppData.version)
        print(AppData.settings)
        
        // Classes
        
        class Trabalhador {
            let hours: Int
            
            init(hours: Int) {
                self.hours = hours
            }
            
            func printSummary() {
                print("I work \(hours) hours a day.")
            }
        }
        
        class Desenvolvedor: Trabalhador {
            func work() {
                print("I'm coding for \(hours) hours.")
            }
            
            override func printSummary() {
                print("I spend \(hours) hours a day searching Stack Overflow")
            }
        }
        
        let novall = Desenvolvedor(hours: 8)
        novall.work()
        novall.printSummary()
        
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
        
        class Singer {
            var name = "Adele"
        }
        
        var singer1 = Singer()
        var singer2 = singer1
        singer2.name = "Justin"
        print(singer1.name)
        print(singer2.name)
        
        class User {
            let id: Int
            
            init(id: Int) {
                self.id = id
                print("User \(id): I'm alive!")
            }
            
            deinit {
                print("User \(id): I'm dead!")
            }
        }
        
        for i in 1...3 {
            let user = User(id: i)
            print("User \(user.id): I'm in control!")
        }
        
        class User4 {
            var name = "Paul"
        }
        
        let user4 = User4()
        user4.name = "Taylor"
        print(user4.name)
        
        // Protocols
        
        protocol Vehicle2 {
            var name: String { get }
            var currentPassengers: Int { get set }
            func estimateTime(for distance: Int) -> Int
            func travel(distance: Int)
        }
        
        struct Car2: Vehicle2 {
            let name = "Car"
            var currentPassengers = 1
            func estimateTime(for distance: Int) -> Int {
                distance / 50
            }
            
            func travel(distance: Int) {
                print("I'm driving \(distance)km.")
            }
        }
        
        func commute(distance: Int, using vehicle: Vehicle2) {
            if vehicle.estimateTime(for: distance) > 100 {
                print("Too slow!")
            } else {
                vehicle.travel(distance: distance)
            }
        }
        
        let car = Car2()
        commute(distance: 100, using: car)
        
        let guests = ["Mario", "Luigi", "Peach"]

        if guests.isNotEmpty2 {
            print("Guest count: \(guests.count)")
        }
        
        // Optionals
        let opposities = [
            "Mario": "Wario",
            "Luigi": "Waluigi"
        ]
        
        if let marioOpposite = opposities["Mario"] {
            print("Mario's opposite is \(marioOpposite)")
        }
        
        let peachOpposite = opposities["Peach"]
        
        func printSquare(of number: Int?) {
            guard let number = number else {
                print("Missing input")
                return
            }
            
            print("\(number) x \(number) is \(number * number)")
        }
        
        let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
        let favorite = tvShows.randomElement() ?? "None"
        print(favorite)
        
        let input = ""
        let number2 = Int(input) ?? 0
        print(type(of: input))
        print(type(of: number2))
        
        print(number2)
        
        let names = ["Arya", "Bran", "Robb", "Sansa"]
        let chosen = names.randomElement()?.uppercased()
        print("Next in line: \(chosen ?? "No one")")
        
        enum UserError: Error {
            case badID, networkFailed
        }
        
        func getUser(id: Int) throws -> String {
            throw UserError.networkFailed
        }
        
        if let user = try? getUser(id: 23) {
            print("User: \(user)")
        }
    }
}

// Extensions

extension String {
    func trimmed2() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim2() {
        self = self.trimmed2()
    }
    
    var lines2: [String] {
        self.components(separatedBy: .newlines)
    }
}


var quote = "     The truth is rarely pure and never simple     "
let trimmed2 = quote.trimmed()

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
"""

// Protocol Extensions

extension Collection {
    var isNotEmpty2: Bool {
        isEmpty == false
    }
}
