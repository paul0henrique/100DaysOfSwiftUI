//
//  Day2.swift
//  100DaysOfSwiftUI
//
//  Created by Paulo Henrique on 22/05/24.
//

import Foundation

class Day2: Day {
    static func main() {
            let fileName = "ph.png"
        
            print(fileName.hasSuffix(".txt"))
        
            var isAuthenticated = false
            isAuthenticated.toggle()
            print(isAuthenticated)
        
            let people = "Haters"
            let action = "hate"
            let lyric = people + " gonna " + action
            print(lyric)
        
    }
}
