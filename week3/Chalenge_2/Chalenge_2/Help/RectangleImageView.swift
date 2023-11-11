//
//  CircleImageView.swift
//  Chalenge_2
//
//  Created by MICHAIL SHAKHVOROSTOV on 11.11.2023.
//

import SwiftUI

struct RectangleImageView: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .clipShape(.rect)
            .overlay {
                Rectangle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
            
    }
}

#Preview {
    RectangleImageView(imageName: "0")
}
