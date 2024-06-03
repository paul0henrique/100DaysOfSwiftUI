//
//  Day4.swift
//  100DaysOfSwiftUI
//
//  Created by Paulo Henrique on 24/05/24.
//

import Foundation
struct Day4: Day {
    static func main() {
        // Type inference
        let name = "Paulo"
        print(name)
        
        let score = 10
        print(score)
        
        // Type annotation
        let name2: String = "PH"
        print(name2)
        
        let score2: Int = 10
        print(score2)
        
        let songs: [String] = ["Believer", "Wrecked", "It's ok"]
        print(songs)
        
        let words: [String: String] = ["ENEM": "Exame Nacional do Ensino Médio"]
        print(words)
        
        let movies: Set<String> = Set(["X-men: Days of future past", "X-men: First class"])
        print(movies)
        
        let cities: [String] = [String]()
        print(cities)
        
        let cities2 = [String]()
        print(cities2)
        
        enum UIStyle {
            case light, dark, system
        }
        
        let style = UIStyle.light
        
        print(style)
    }
}
