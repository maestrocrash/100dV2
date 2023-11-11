//
//  CircleImageView.swift
//  Moonshot
//
//  Created by MICHAIL SHAKHVOROSTOV on 10.11.2023.
//

import SwiftUI

struct CircleImageView: View {
    
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
          
            .clipShape(.circle)
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
            
        
    }
}

#Preview {
    CircleImageView(imageName: "apollo1")
}
