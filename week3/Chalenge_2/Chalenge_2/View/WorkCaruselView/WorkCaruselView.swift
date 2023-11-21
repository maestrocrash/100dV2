//
//  WorkCaruselView.swift
//  Chalenge_2
//
//  Created by MICHAIL SHAKHVOROSTOV on 11.11.2023.
//

import SwiftUI

struct WorkCaruselView: View {
    
    var workArtist: [Works]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(workArtist, id: \.title) { artist in
                    NavigationLink {
                        DetailWork(nameWork: artist)
                            .padding()
                    } label: {
                        ItemCaruselWork(imageName: artist.image, artistName: artist.title)
                    }
                }
            }
            
        }
    }
}

#Preview {
    let artistExp: ArtistModel = Bundle.main.decode("artist.json")
    
    return WorkCaruselView(workArtist: artistExp.artists[0].works)
}
