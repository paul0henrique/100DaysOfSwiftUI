//
//  Day8.swift
//  100DaysOfSwiftUI
//
//  Created by Paulo Henrique on 04/06/24.
//

import Foundation
struct Day8: Day {
    static func main() {
        func printTimesTables(for number: Int, end: Int = 12) {
            for i in 1...end {
                print("\(i) x \(number) is \(i * number)")
            }
        }

        printTimesTables(for: 5, end: 20)
        printTimesTables(for: 8)
        
        func findDirections(from: String, to: String, route: String = "fastest", avoidHighways: Bool = false) {
            
        }
        
        findDirections(from: "London", to: "Glasgow")
        
        func parkCar(_ type: String, automatically: Bool = true) {
            if automatically {
                print("Nice - my \(type) parked itself!")
            } else {
                print("I guess I'll have to do it.")
            }
        }
        parkCar("Tesla")
        
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
            
            if password.count < 8 {
                return "OK"
            } else if password.count < 10 {
                return "Good"
            } else {
                return "Excellent"
            }
        }
        
        let string = "123"
        
        do {
            let result = try checkPassword(string)
            print("Password rating: \(result)")
        } catch PasswordError.short {
            print("Please use a longer password.")
        } catch PasswordError.obvious {
            print("I have the same combination on my luggage!")
        } catch {
            print("There was an error.")
            print(error.localizedDescription)
        }
        
    }
}
