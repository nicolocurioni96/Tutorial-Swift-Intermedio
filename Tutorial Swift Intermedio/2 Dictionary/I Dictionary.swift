//
//  I Dictionary.swift
//  Tutorial Swift Intermedio
//
//  Created by Nicolò Curioni on 19/09/23.
//

import SwiftUI

struct I_Dictionary: View {
    /// `Dictionary`
    
    // Create a sample dictionary
    var httpResponseMessages = [
        200: "OK",
        404: "File not found",
        500: "Internal server error"]
    
    // Create an empty dictionary
    var emptyDictionary: [String: String] = [:]
    
    init() {
        // (Uncomment to test)
        // Read and Change a value in the Dictionary
        //print(httpResponseMessages[500])
        //httpResponseMessages[500] = "Ops, something went wrong w/the server..."
        //print(httpResponseMessages[500])
        
        for (statusCode, statusMessage) in httpResponseMessages {
            print("⚠️ HTTP Statuses\n\nCode 👉🏻 \(statusCode)\nMessage 👉🏻 \(statusMessage)")
        }
    }
    
    var body: some View {
        VStack {
            Text("I Dictionary")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundStyle(.orange)
                .padding()
        }
    }
}

#Preview {
    I_Dictionary()
}
