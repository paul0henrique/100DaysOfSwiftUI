//
//  Day5.swift
//  100DaysOfSwiftUI
//
//  Created by Paulo Henrique on 27/05/24.
//

import Foundation
struct Day5: Day {
    static func main() {
        let score = 5
        
        if score == 5 {
            print("Great job!")
        }
        
        let speed = 88
        let percentage = 85
        let age = 18
        
        if speed >= 88 {
            print("Take care! Where we're going we don't need roads.")
        }
        
        if percentage < 85 {
            print("Sorry. You failed the test.")
        }
        
        if age >= 18 {
            print("You're eligible to vote.")
        }
        
        let ourName = "Paulo"
        let friendName = "Bernardo"
        
        if ourName < friendName {
            print("It's \(ourName) vs \(friendName)")
        }
        
        if ourName > friendName {
            print("It's \(friendName) vs \(ourName)")
        }
        
        var numbers = [1,2,3]
        numbers.append(4)
        
        if numbers.count > 3 {
            numbers.remove(at: 0)
        }
        
        print(numbers)
        
        let country = "Canada"
        
        if country == "Brazil"{
            print("HUEBR")
        }
        
        let name = "Taylor Swift"
        
        if name != "Anonymous" {
            print("Welcome, \(name)")
        }
        
        var username = "phspiderman"
        
        if username == "" {
            username = "Anonymous"
        }
        
        print("Welcome, \(username)")
        
        if username.count == 0 {
            print("Hello, Anonymous")
        }
        
        if username.isEmpty {
            print("Hello, Anonymous")
        }
        
        enum Sizes: Comparable {
            case small, medium, large
        }
        
        let first = Sizes.small
        let second = Sizes.medium
        
        print(first < second)
        
        let a = true
        let b = false
        
        if a {
            print("Code to run if a is true")
        } else if b {
            print("Code to run if b is true")
        } else {
            print("Code to run if both a and b are false")
        }
        
        let userAge = 22
        let hasParentalConsent = true
        
        if userAge >= 18 || hasParentalConsent {
            print("You can buy the game")
        }
        
        enum TransportOption {
            case airplane, helicopter, bicycle, car, scooter
        }
        
        let transport = TransportOption.airplane
        
        if transport == .airplane || transport == .helicopter {
            print("Let's fly!")
        }
        
        else if transport == .bicycle {
            print("I hope there's a bike path...")
        }
        
        else if transport == .car {
            print("Time to get stuck in traffic.")
        }
        
        else {
            print("I'm going to hire a scooter now!")
        }
        
        let isOwner = true
        let isAdmin = true
        let isEditingEnabled = true
        
        if isOwner && (isEditingEnabled || isAdmin) {
            print("You can delete this post")
        }
        
        enum Weather {
            case sun, rain, wind, snow, unknown
        }
        
        let forecast = Weather.sun
        
        switch forecast {
        case .sun:
            print("It should be a nice day.")
        case .rain:
            print("Pack an umbrella.")
        case .wind:
            print("Wear something warm.")
        case .snow:
            print("School is cancelled.")
        case .unknown:
            print("Our forecast generator is broken!")
        }
        
        let place = "Metropolis"
        
        switch place {
        case "Gotham":
            print("You're Batman!")
        case "Mega-City One":
            print("You're Judge Dredd!")
        case "Wakanda":
            print("You're Black Panther!")
        default:
            print("Who are you?")
        }
        
        let day = 5
        print("My true love gave to me...")
        
        switch day {
        case 5:
            print("5 golden rings")
            fallthrough
        case 4:
            print("4 calling birds")
            fallthrough
        case 3:
            print("3 French hens")
            fallthrough
        case 2:
            print("2 turtle doves")
            fallthrough
        default:
            print("A partridge in a pear tree")
        }
        
        let personAge = 18
        let canVote = personAge >= 18 ? "Yes" : "No"
        print(canVote)
        
        let hour = 23
        print(hour < 12 ? "It's before noon" : "It's after noon")
        
        let names = ["Paulo", "Bernardo", "Gabi", "João"]
        let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
        print(crewCount)
        
    }
}
