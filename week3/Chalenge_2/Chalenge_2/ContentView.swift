//
//  ContentView.swift
//  Chalenge_2
//
//  Created by MICHAIL SHAKHVOROSTOV on 10.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    let artistExp: ArtistModel = Bundle.main.decode("artist.json")
    
    var body: some View {
        MainView(artist: artistExp)
    }
}

#Preview {
    ContentView()
}
