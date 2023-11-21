//
//  ItemListWork.swift
//  Chalenge_2
//
//  Created by MICHAIL SHAKHVOROSTOV on 16.11.2023.
//

import SwiftUI

struct ItemListWork: View {
    var works: Works
    
    var body: some View {
        ZStack {
            Image(works.image)
                .resizable()
                .aspectRatio(3/2, contentMode: .fit)
                .overlay {
                    TextOverlayList(nameImage: works.title)
                }
        }
    }
}

#Preview {
    let artistExp: ArtistModel = Bundle.main.decode("artist.json")
    
    return ItemListWork(works: artistExp.artists[0].works[0])
}
