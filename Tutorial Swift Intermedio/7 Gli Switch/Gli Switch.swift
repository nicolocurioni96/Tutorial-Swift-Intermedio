//
//  Gli Switch.swift
//  Tutorial Swift Intermedio
//
//  Created by Nicolò Curioni on 26/09/23.
//

import SwiftUI

struct Gli_Switch: View {
    /// `Switch` statements
    
    // 1) Check a specific case
    let weather = "abc"
    
    // 2) SE-0380 if-switch expressions
    let score = 700
    
    init() {
        // 1) Check a specific case
        /*switch weather {
        case "rain":
            print("We need an umbrella!")
        case "snow":
            print("I love ❄️!")
        case "sunny":
            print("It's a beautiful day! 🌞")
        default:
            print("IDK")
        }*/
        
        // 2) SE-0380 if-switch expressions
        let aResult = if score >= 500 { "Great job!" } else { "Failed" }
        //print(aResult)
        
        let complexResult = switch score {
        case 0...300: "Failed"
        case 301...500: "Great job! ✅"
        default: "Failed"
        }
        
        print(complexResult)
    }
    
    var body: some View {
        VStack {
            Text("Gli Switch")
                .padding()
        }
    }
}

#Preview {
    Gli_Switch()
}
