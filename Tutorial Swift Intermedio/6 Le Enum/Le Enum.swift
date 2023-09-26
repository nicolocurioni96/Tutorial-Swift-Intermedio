//
//  Le Enum.swift
//  Tutorial Swift Intermedio
//
//  Created by Nicolò Curioni on 24/09/23.
//

import SwiftUI

// 1) Enumeration Syntax
enum CompassPoint {
    case north
    case south
    case east
    case west
}

// Multiple cases on a single line
enum Planet: Int {
    case mercury, venus, earth, mars
}

// 3) Iterating over enum cases
enum Beverage: CaseIterable {
    case coffee, tee, coke, juice
}

// 4) Associated values
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

struct Le_Enum: View {
    /// `Enum` control flow
    
    // 1) Enumeration Syntax
    
    // 2) Matching enum values with Switch statements
    var directionToHead = CompassPoint.west
    
    // 3) Iterating over enum cases
    
    // 4) Associated values
    var productBarcode = Barcode.upc(8, 85909, 51226, 3)
    
    // 5) Raw values
    let possiblePlanet = Planet(rawValue: 2)
    
    init() {
        // 2) Matching enum values with Switch statements
        directionToHead = .north
        
        switch directionToHead {
        case .north:
            print("Lot's of planets have a north")
        case .south:
            print("Watch out for penguins")
        case .east:
            print("Where the sun rises")
        case .west:
            print("Where the skies are blue")
        }
        
        // 3) Iterating over enum cases
        let numberOfChoices = Beverage.allCases.count
        print("\(numberOfChoices) beverages available")
        
        for beverage in Beverage.allCases {
            print(beverage)
        }
        
        // 4) Associated values
        productBarcode = .qrCode("https://www.withnico.com")
        
        // 5) Raw values
        print(possiblePlanet)
        
        let myPlanetPosition = 5
        if let somePlanet = Planet(rawValue: myPlanetPosition) {
            switch somePlanet {
            case .earth:
                print("I love the planet 🌎")
            default:
                print("IDK, not a safe place for humans..")
            }
        } else {
            print("There isn't a planet at position \(myPlanetPosition)")
        }
    }
    
    var body: some View {
        VStack {
            Text("Le Enum")
                .padding()
        }
    }
}

#Preview {
    Le_Enum()
}
