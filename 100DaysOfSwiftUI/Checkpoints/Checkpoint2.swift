//
//  Checkpoint2.swift
//  100DaysOfSwiftUI
//
//  Created by Paulo Henrique on 24/05/24.
//

import Foundation
struct Checkpoint2: Day {
    static func main() {
        let events: [String] = ["Bridge", "Funday", "Proday", "Talk", "Workshop", "Funday"]
        print("Total de elementos do array: \(events.count)")
        
        let uniqueEvents = Set(events)
        print("Total de elementos únicos do array: \(uniqueEvents.count)")
    }
}
