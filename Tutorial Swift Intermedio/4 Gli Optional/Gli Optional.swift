//
//  Gli Optional.swift
//  Tutorial Swift Intermedio
//
//  Created by Nicolò Curioni on 21/09/23.
//

import SwiftUI

struct Gli_Optional: View {
    /// `Optional Type`
    // Try to change "123" to i.e: "123XYZ" or something else :)
    let possibleNumber = "123"
    
    init() {
        //let convertedNumber = Int(possibleNumber)
        //print(convertedNumber)
        
        // 1st kind of check
        /*if convertedNumber != nil {
         print(convertedNumber)
         } else {
         print("convertedNumber is nil or doens't contain integer values!!")
         }*/
        
        /// `Optional Binding` check
        
        // if-let
        /*if let actualNumber = Int(possibleNumber) {
         print("🟢 The string \"\(possibleNumber)\" has an integer of \(actualNumber)")
         } else {
         print("🔴 The string \"\(possibleNumber)\" couldn't be converted to an integer!!")
         }*/
        
        // guard-let
        /*guard let actualNumber = Int(possibleNumber) else {
         print("🔴 The string \"\(possibleNumber)\" couldn't be converted to an integer!!")
         
         return
         }
         
         print("🟢 The string \"\(possibleNumber)\" has an integer of \(actualNumber)")
         */
    }
    
    var body: some View {
        VStack {
            Text("Gli Optional")
                .padding()
        }
    }
}

#Preview {
    Gli_Optional()
}
