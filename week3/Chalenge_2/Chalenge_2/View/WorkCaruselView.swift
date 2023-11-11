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
                        VStack {
                            RectangleImageView(imageName: artist.image)
                                .frame(width: 300, height: 300)
                                .padding(.bottom, 10)
                                .padding(.trailing, 10)
                            
                                Text("\(artist.title)")
                                .foregroundStyle(.black)
                                .font(.title2)
                        }
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
