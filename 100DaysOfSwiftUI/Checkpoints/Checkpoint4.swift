//
//  Checkpoint4.swift
//  100DaysOfSwiftUI
//
//  Created by Paulo Henrique on 04/06/24.
//

import Foundation
struct Checkpoint4: Day {
    static func main() {
        
        enum SqrtError: Error {
            case outOfBounds, noRoot
        }
        
        func checkNumberRange(_ number: Int) throws {
            if number < 1 || number > 10_000 {
                throw SqrtError.outOfBounds
            }
        }

        
        func findSqrt(_ integer: Int) throws -> Int {
            for number in 1...100 {
                if number * number == integer {
                    return number
                }
            }
            throw SqrtError.noRoot
        }
        
        let value = 49
        
        do {
            try checkNumberRange(value)
            let result = try findSqrt(value)
            print("Sqrt: \(result)")
        } catch SqrtError.outOfBounds {
            print("Out of bounds")
        } catch SqrtError.noRoot {
            print("No root")
        } catch {
            print("There was an error :( | \(error.localizedDescription)")
        }
    }
}
