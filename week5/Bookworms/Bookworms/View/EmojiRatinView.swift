//
//  EmojiRatinView.swift
//  Bookworms
//
//  Created by MICHAIL SHAKHVOROSTOV on 27.11.2023.
//

import SwiftUI

struct EmojiRatinView: View {
    let rating: Int
    
    
    var body: some View {
        switch rating {
        case 1:
            Text("🫠")
        case 2:
            Text("🫤")
        case 3:
            Text("😑")
        case 4:
            Text("🤤")
        case 5:
            Text("🤩")
        default:
            Text("")
        }
    }
}

#Preview {
    EmojiRatinView(rating: 4)
}
