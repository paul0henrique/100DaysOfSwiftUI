//
//  Checkpoint7.swift
//  100DaysOfSwiftUI
//
//  Created by Paulo Henrique on 16/07/24.
//

import Foundation
struct Checkpoint7: Day {
    static func main() {
        class Animal {
            let legs: Int
            
            init(legs: Int) {
                self.legs = legs
            }
        }
        
        class Dog: Animal {
            func speak() {
                print("Au au!")
            }
        }
        
        class Cat: Animal {
            var isTame: Bool
            
            init(legs: Int, isTame: Bool) {
                self.isTame = isTame
                super.init(legs: legs)
            }
            
            func speak() {
                print("Miau!")
            }
        }
        
        class Corgi: Dog {
            override func speak(){
                print("Au Au Corgi")
            }
        }
        
        class Poodle: Dog {
            override func speak(){
                print("Au au Poodle")
            }
        }
        
        class Persian: Cat {
            override func speak() {
                print("Miau Miau Persian")
            }
            
        }
        
        class Lion: Cat {
            override func speak() {
                print("Miau Miau Lion")
            }
        }
        
        let dog1 = Dog(legs: 4)
        dog1.speak()
        
        let dog2 = Corgi(legs: 4)
        dog2.speak()
        
        let dog3 = Poodle(legs: 4)
        dog3.speak()
        
        let cat1 = Cat(legs: 4, isTame: false)
        cat1.speak()
        
        let cat2 = Persian(legs: 4, isTame: true)
        cat2.speak()
        
        let cat3 = Lion(legs: 4, isTame: false)
        cat3.speak()
    }
}
