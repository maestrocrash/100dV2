//
//  MainView.swift
//  Chalenge_2
//
//  Created by MICHAIL SHAKHVOROSTOV on 11.11.2023.
//

import SwiftUI

struct MainView: View {
    let artist: ArtistModel
    
    var body: some View {
        NavigationStack {
            List(artist.artists, id: \.name) {artist in
                NavigationLink{
                    ArtistDetailView(oneArtist: artist)
                } label: {
                    RectangleImageView(imageName: artist.image)
                        .padding(.trailing, 5)
                        .containerRelativeFrame(.horizontal) {width, _ in
                            width * 0.3
                        }
                    
                    VStack(alignment: .leading) {
                        Text("\(artist.name)")
                            .font(.title)
                        
                        Text("\(artist.bio)")
                            .font(.subheadline.italic())
                            .frame(maxHeight: 120)
                    }
                }
            }
            .navigationTitle("Artist")
        }
    }
}
