//
//  Tuple e Set.swift
//  Tutorial Swift Intermedio
//
//  Created by Nicolò Curioni on 17/09/23.
//

import SwiftUI

struct Tuple_e_Set: View {
    /// `Tuple`
    let httpStatusCode = (statusCode: 200, statusMessage: "Success ✅")
    
    /// `Set`
    let colors = Set(["Red", "Green", "Blue", "Orange", "Pink"])
    let duplicatedColors = Set(["Red", "Red", "Green", "Blue", "Blue", "Orange", "Pink"])
    
    
    init() {
        //print(colors) // Random order
        print(duplicatedColors) // No copies or duplicates (i.e: "Red", "Red" ...)
    }
    
    var body: some View {
        VStack {
            Text("Hello, World, today's HTTP status code is: \n\nStatus Code 👉🏻 \(httpStatusCode.statusCode)\n\nStatus Message 👉🏻 \(httpStatusCode.statusMessage)!")
                .padding()
        }
    }
}

struct Tuple_e_Set_Previews: PreviewProvider {
    static var previews: some View {
        Tuple_e_Set()
    }
}
