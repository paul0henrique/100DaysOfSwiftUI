//
//  Day6.swift
//  100DaysOfSwiftUI
//
//  Created by Paulo Henrique on 28/05/24.
//

import Foundation
class Day6: Day {
    static func main() {
        let platforms = ["iOS", "macOS", "tvOS", "watchOS"]
        
        for platform in platforms {
            print("Swift works great on \(platform).")
        }
        
        for i in 1...12 {
            print("5 x \(i) is \(5*i)")
        }
        
        for i in 1...12 {
            print("The \(i) times table:")
            
            for j in 1...12 {
                print(" \(j) x \(i) is \(j*i)")
            }
            print()
        }
        
        for i in 1...5 {
            print("Couting from 1 through 5: \(i)")
        }
        
        print()
        
        for i in 1..<5 {
            print("Counting 1 up to 5: \(i)")
        }
        
        var lyric = "Haters gonna"
        
        for _ in 1...5 {
            lyric += " hate"
        }
        
        print(lyric)
        
        var countdown = 10
        
        while countdown > 0 {
            print("\(countdown)...")
            countdown -= 1
        }
        
        print("Blast off!")
        
        var roll = 0
        
        while roll != 20 {
            roll = Int.random(in: 1...20)
            print("I rolled a \(roll)")
        }
        
        print("Critical hit!")
        
        var cats: Int = 0
        while cats < 10 {
            cats += 1
            print("I'm getting another cat.")
            if cats == 4 {
                print("Enough cats!")
                cats = 10
            }
        }
        
        var number: Int = 10
        while number > 0 {
            number -= 2
            if number.isMultiple(of: 2) {
                print("\(number) is an even number.")
            }
        }
        
        var speed = 50
        while speed <= 55 {
            print("Accelerating to \(speed)")
            speed += 1
        }
        
        let filenames = ["me.jpg", "work.jpg", "sophie.jpg", "logo.psd"]
        
        for filename in filenames {
            if filename.hasSuffix(".jpg") == false {
                continue
            }
            
            print("Found picture: \(filename)")
        }
        
        let number1 = 4
        let number2 = 14
        var multiples = [Int]()
        
        for i in 1...100_000 {
            if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
                multiples.append(i)
                
                if multiples.count == 10 {
                    break
                }
            }
        }
        
        print(multiples)
        
        let scores = [1, 8, 4, 3, 0, 5, 2]
        var count = 0
        
        for score in scores {
            if score == 0 {
                break
            }
            
            count += 1
        }
        print("You had \(count) scores before you got 0.")
        
        let options = ["up", "down", "left", "right"]
        let secretCombination = ["up", "up", "right"]
        
    outerLoop: for option1 in options {
        for option2 in options {
            for option3 in options {
                print("In loop")
                let attempt = [option1, option2, option3]
                
                if attempt == secretCombination {
                    print("The combination is \(attempt)!")
                    break outerLoop
                }
            }
        }
    }
        
        
    }
}
