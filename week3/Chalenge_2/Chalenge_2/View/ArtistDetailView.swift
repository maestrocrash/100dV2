//
//  ArtistDetailView.swift
//  Chalenge_2
//
//  Created by MICHAIL SHAKHVOROSTOV on 11.11.2023.
//

import SwiftUI

struct ArtistDetailView: View {
    
    let oneArtist: Artist
    @State private var viewWorks = false
    @State private var imageViewWorks: String = "list.bullet"
    
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
                    
                    HStack {
                        Text(LocalizedStringKey("Work artist"))
                        Spacer()
                        Button {
                            viewWorks.toggle()
                            imageViewW()
                        }label: {
                            Image(systemName: imageViewWorks)
                        }
                        .frame(width: 30, height: 30)
                        .tint(.black)
                        .font(.title)
                    }
                    
                    if viewWorks {
                        withAnimation {
                            ListViewWork(worksArtis: oneArtist.works)
                        }
                    }else {
                        withAnimation(.bouncy) {
                            WorkCaruselView(workArtist: oneArtist.works)
                        }
                    }
                    
                }
                .padding()
            }
            .navigationTitle(oneArtist.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    func imageViewW() {
        if viewWorks {
            imageViewWorks = "square.split.2x2.fill"
        } else {
            imageViewWorks = "list.bullet"
        }
    }
    
}

#Preview {
    let artistExp: ArtistModel = Bundle.main.decode("artist.json")
    
    return ArtistDetailView(oneArtist: artistExp.artists[0])
}
