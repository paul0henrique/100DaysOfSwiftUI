//
//  Day1.swift
//  100DaysOfSwiftUI
//
//  Created by Paulo Henrique on 22/05/24.
//

import Foundation

class Day1: Day {
    static func main() {
        let name: String = "Paulo"
        print(name)
        
        let quote = """
        Take a look outside
        It's a beautiful day
        """
        
        print(name)
        print(quote)
        print(name.uppercased())
        print(name.count)
        
        let number: Int = 5
        print(number.isMultiple(of: 20))
    }
}
