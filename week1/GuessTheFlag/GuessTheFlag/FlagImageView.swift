//
//  FlagImageView.swift
//  GuessTheFlag
//
//  Created by MICHAIL SHAKHVOROSTOV on 01.11.2023.
//

import SwiftUI

struct FlagImage: View {
    var imageName: String
    
    var body: some View {
        Image(decorative: imageName)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding(.top, 10)
            .shadow(color: .white.opacity(0.3), radius: 6, x: 0, y: 4)
    }
}
