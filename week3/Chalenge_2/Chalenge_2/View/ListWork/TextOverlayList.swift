//
//  TextOverlayList.swift
//  Chalenge_2
//
//  Created by MICHAIL SHAKHVOROSTOV on 16.11.2023.
//

import SwiftUI

struct TextOverlayList: View {
    var nameImage: String
    
    var gradient: LinearGradient {
        .linearGradient(colors: [.black.opacity(0.5), .black.opacity(0.2)], startPoint: .bottom, endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
                
            VStack(alignment: .leading) {
                Text(nameImage)
                    .foregroundStyle(.white)
                    .font(.title)
                    .bold()
                    .padding()
            }
        }
    }
}

