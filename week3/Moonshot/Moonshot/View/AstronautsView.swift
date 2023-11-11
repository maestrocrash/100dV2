//
//  AstronautsView.swift
//  Moonshot
//
//  Created by MICHAIL SHAKHVOROSTOV on 10.11.2023.
//

import SwiftUI

struct AstronautsView: View {
    let astronaut: Astronaut
    
    var body: some View {
        
        ScrollView {
            VStack {
        
                CircleImageView(imageName: astronaut.id)
                    //.resizable()
                    //.scaledToFit()
                
                Text(astronaut.description)
                    .padding()
            }
        }
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    return AstronautsView(astronaut: astronauts["aldrin"]!)
                .preferredColorScheme(.dark)
}
