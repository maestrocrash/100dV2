//
//  DetailWork.swift
//  Chalenge_2
//
//  Created by MICHAIL SHAKHVOROSTOV on 11.11.2023.
//

import SwiftUI

struct DetailWork: View {
    
    let nameWork: Works
    
    var body: some View {
        ScrollView {
            RectangleImageView(imageName: nameWork.image)
                .padding()
            
            Text("\(nameWork.info)")
        }
        .navigationTitle(nameWork.title)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    let artistExp: ArtistModel = Bundle.main.decode("artist.json")
    
    return DetailWork(nameWork: artistExp.artists[0].works[0])
}
