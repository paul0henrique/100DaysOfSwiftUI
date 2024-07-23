//
//  Day14.swift
//  100DaysOfSwiftUI
//
//  Created by Paulo Henrique on 22/07/24.
//

import Foundation
struct Day14: Day {
    static func main() {
        let opposites = [
            "Mario": "Wario",
            "Luigi": "Waluigi"
        ]
        
        let peachOpposite = opposites["Peach"]
        
        if let marioOpposite = opposites["Mario"] {
            print("Mario's opposite is \(marioOpposite)")
        }
        
        var username: String? = nil
        if let unwrappedName = username {
            print("We got a user: \(unwrappedName)")
        } else {
            print("The optional was empty.")
        }
        
        func square(number: Int) -> Int {
            number * number
        }
        
        var number: Int? = nil
        
        if let number {
            print(square(number: number))
        }
        
        func printSquare(of number: Int?) {
            guard let number = number else {
                print("Missing input")
                return
            }
            
            print("\(number) x \(number) is \(number * number)")
        }
        
        let captains = [
            "Enterprise": "Picard",
            "Voyager": "Janeway",
            "Defiant": "Sisko"
        ]
        
        let new = captains["Serenity"] ?? "N/A"
        
        let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
        let favorite = tvShows.randomElement() ?? "None"
        
        struct Book {
            let title: String
            let author: String?
        }
        
        let book = Book(title: "Beowulf", author: nil)
        let author = book.author ?? "Anonymous"
        print(author)
        
        let input = ""
        let number2 = Int(input) ?? 0
        print(number2)
        
        let names = ["Arya", "Bran", "Robb", "Sansa"]
        
        let chosen = names.randomElement()?.uppercased() ?? "No one"
        print("Next in line: \(chosen)")
        
        struct Book2 {
            let title: String
            let author: String?
        }
        
        var book2: Book2? = nil
        let author2 = book2?.author?.first?.uppercased() ?? "A"
        print(author2)
        
        let shoppingList = ["eggs", "tomatoes", "grapes"]
        let firstItem = shoppingList.first?.appending(" are on my shopping list")
        
        enum UserError: Error {
            case badID, networkFailed
        }
        
        func getUser(id: Int) throws -> String {
            throw UserError.networkFailed
        }
        
        if let user = try? getUser(id: 23) {
            print("User: \(user)")
        }
        
        let user2 = (try? getUser(id: 23)) ?? "Anonymous"
        print(user2)
    }
}
