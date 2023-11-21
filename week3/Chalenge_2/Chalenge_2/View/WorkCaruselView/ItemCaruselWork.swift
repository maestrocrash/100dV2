//
//  ItemCaruselWork.swift
//  Chalenge_2
//
//  Created by MICHAIL SHAKHVOROSTOV on 16.11.2023.
//

import SwiftUI

struct ItemCaruselWork: View {
    
    var imageName: String
    var artistName: String
    
    var body: some View {
        VStack {
            RectangleImageView(imageName: imageName)
                .frame(width: 300, height: 300)
                .padding(.bottom, 10)
                .padding(.trailing, 10)
            
                Text(artistName)
                .foregroundStyle(.black)
                .font(.title2)
        }
    }
}

