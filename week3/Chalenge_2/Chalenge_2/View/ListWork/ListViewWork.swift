//
//  ListViewWork.swift
//  Chalenge_2
//
//  Created by MICHAIL SHAKHVOROSTOV on 16.11.2023.
//

import SwiftUI

struct ListViewWork: View {
    
    var worksArtis: [Works]
    
    var body: some View {
        NavigationStack {
            
            ScrollView {
                ForEach(worksArtis, id: \.title) {work in
                    NavigationLink {
                        DetailWork(nameWork: work)
                    } label: {
                        ItemListWork(works: work)
                    }
                }
            }
            
            List(worksArtis, id: \.title) { works in
                NavigationLink {
                    DetailWork(nameWork: works)
                        .padding()
                } label: {
                    ItemListWork(works: works)
                }
            }
        }
    }
}

#Preview {
    let artistExp: ArtistModel = Bundle.main.decode("artist.json")
    
    return ListViewWork(worksArtis: artistExp.artists[1].works)
}
