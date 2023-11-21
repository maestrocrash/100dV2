//
//  MainView.swift
//  Chalenge_2
//
//  Created by MICHAIL SHAKHVOROSTOV on 11.11.2023.
//

import SwiftUI
import FlagKit

struct MainView: View {
    let artist: ArtistModel
    @State private var languageApp = Language.english_us

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
            .navigationTitle(LocalizedStringKey("artistkey"))
            .toolbar {
                Button {
                    languageApp.toggle()
                } label: {
                    flagByImage(nameFlag: languageApp.rawValue.uppercased())
                        .resizable()
                        .frame(width: 30, height: 30)
                }

            }
        }
    }
    
    private func flagByImage(nameFlag: String) -> Image {
        guard let flag = Flag(countryCode: nameFlag) else {
            return Image(systemName: "pencil")
        }
        
        
        return Image(uiImage: flag.image(style: .circle))
    }
}
