//
//  Classi e Strutture.swift
//  Tutorial Swift Intermedio
//
//  Created by Nicolò Curioni on 24/09/23.
//

import SwiftUI

/// Struct (value type)
struct Document {
    var text: String
}

/// Classes (reference type)
/*class Document {
    var text: String
    
    init(text: String) {
        self.text = text
    }
}*/

struct Classi_e_Strutture: View {
    /// `Classes` & `Structures`
    
    init() {
        // Struct and Classes ops
        var myDoc = Document(text: "I 💙 Apple")
        var friendDoc = myDoc
        
        friendDoc.text = "I 💖 Google"
        
        print(friendDoc.text)
        print(myDoc.text)
    }
    
    var body: some View {
        VStack {
            Text("Classi e Strutture")
                .padding()
        }
    }
}

#Preview {
    Classi_e_Strutture()
}
