//
//  ArtistDetailView.swift
//  Chalenge_2
//
//  Created by MICHAIL SHAKHVOROSTOV on 11.11.2023.
//

import SwiftUI

struct ArtistDetailView: View {
    
    let oneArtist: Artist
    
    var body: some View {
        NavigationStack {
            ScrollView {
                RectangleImageView(imageName: oneArtist.image)
                    .containerRelativeFrame(.horizontal) {width, _ in
                        width * 0.5
                }
                    .background(.gray)
               
                VStack(alignment: .leading) {

                    Text("\(oneArtist.bio)")
                        .font(.subheadline.italic())
                        .padding(.bottom)
                    
                    Text("Work artist")
                    WorkCaruselView(workArtist: oneArtist.works)
                }
                .padding()
                
            }
            .navigationTitle(oneArtist.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    let artistExp: ArtistModel = Bundle.main.decode("artist.json")
    
    return ArtistDetailView(oneArtist: artistExp.artists[0])
}
