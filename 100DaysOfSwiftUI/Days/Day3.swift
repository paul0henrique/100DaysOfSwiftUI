//
//  Day3.swift
//  100DaysOfSwiftUI
//
//  Created by Paulo Henrique on 23/05/24.
//

import Foundation

struct Day3: Day {
    static func main() {
        
        // ARRAYS
        var academy = ["Foundation", "Regular", "Residência"]
        
        academy.append("Heroes")
        print(academy)
        
        var scores = Array<Int>()
        scores.append(3)
        scores.append(5)
        scores.append(8)
        
        print(scores)
        scores.remove(at: 0)
        print(scores)
        scores.removeAll()
        print(scores)
        
        print(academy.count)
        print(academy.contains("Regular"))
        print(academy.sorted())
        
        let reverseAcademy = academy.reversed()
        print(reverseAcademy)
        
        // DICTIONARIES
        
        // Dictionaries don’t store items according to their position like arrays do, but instead let us decide where items should be stored.
        
        let student = ["name": "Paulo",
                       "job": "iOS Developer",
                       "location": "Fortaleza"
        ]
        
        print(student["name", default: "Unknown"])
        
        var heights = [String: Int]()
        heights["PH"] = 180
        heights["Paulo"] = 179
        
        print(heights)
        
        let results = [
            "english": 100,
            "portuguese": 100,
            "physics": 80
        ]
        
        print(results["history", default: 0])
        
        let capitals = ["England": "London", "Wales": "Cardiff"]
        let scotlandCapital = capitals["Scotland"]
        print(capitals)
        
        // SETS
        let characters = Set(["Storm", "Wolverine", "Jean Grey", "Cyclops"])
        print(characters)
        
        var team = Set<String>()
        team.insert("Storm")
        team.insert("Jean Grey")
        team.insert("Wolverine")
        
        print(team.contains("Magneto"))
        print(team.count)
        
        // ENUMS
        
        enum Weekday {
            case sunday, monday, tuesday, wednesday, thursday, friday, saturday
        }
        
        var day = Weekday.sunday
        day = .wednesday
        print(day)
        
    }
}
