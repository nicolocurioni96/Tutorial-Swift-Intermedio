//
//  Funzioni.swift
//  Tutorial Swift Intermedio
//
//  Created by Nicolò Curioni on 19/09/23.
//

import SwiftUI

struct Funzioni: View {
    /// `Functions`
    
    // Function without parameters
    func greetingByDefault() -> String {
        return "Hello, Jakidale 👋🏻"
    }
    
    // Function with one parameter
    func greet(person: String) -> String {
        return "Hello, \(person) 👋🏻"
    }
    
    // Function with more than one parameter
    func greet(person: String, date: Date) -> String {
        return "⏰ Date: \(date)\n\nGreeting message: Hello, \(person) 👋🏻"
    }
    
    // Functions with multiple return values
    func minMax(array: [Int]) -> (min: Int, max: Int) {
        var currentMin = array[0]
        var currentMax = array[0]
        
        for value in array[1..<array.count] {
            if value < currentMin {
                currentMin = value
            } else if value > currentMax {
                currentMax = value
            }
        }
        
        return (currentMin, currentMax)
    }
    
    // Functions with implicit return
    func sayHi(to: String) -> String {
        "Hello, \(to) 👋🏻"
    }
    
    // Functions with the _ underscore sign, omitting argument labels
    func sayHiAgain(_ to: String, _ date: Date) -> String {
        return "Hello, \(to) 👋🏻 - \(date)"
    }
    
    // Functions with Variadic Parameters
    func sayHi(to: String...) -> String {
        return "Hello, \(to) 👋🏻"
    }
    
    // Function with In-Out parameters
    func swapTwoIntegers(_ a: inout Int, _ b: inout Int) {
        let temporaryA = a
        a = b
        b = temporaryA
    }
    
    init() {
        //print(greetingByDefault())
        //print(greet(person: "Jakidale"))
        //print(greet(person: "Jakidale", date: Date()))
        
        /*let bounds = minMax(array: [2, -5, 27, 3, 40])
        print("Min is: \(bounds.min) and max is \(bounds.max)")*/
        
        //sayHi(to: "Jakidale")
        //print(sayHiAgain("Jakidale", Date()))
        //print(sayHi(to: "Jakidale", "Andrea", "Tim", "Craig"))
        
        var someInteger = 5
        var anotherInteger = 10
        
        swapTwoIntegers(&someInteger, &anotherInteger)
        
        print("someInteger is now: \(someInteger), and anotherInteger is now: \(anotherInteger)")
    }
    
    var body: some View {
        VStack {
            Text("Le Funzioni")
                .padding()
        }
    }
}

#Preview {
    Funzioni()
}
