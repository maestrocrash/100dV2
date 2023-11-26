//
//  LoadingImage.swift
//  week4.2
//
//  Created by MICHAIL SHAKHVOROSTOV on 22.11.2023.
//

import SwiftUI

struct LoadingImage: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://hws.dev/img/logo.png"), scale: 4)
        
        AsyncImage(url: URL(string: "https://hws.dev/img/logo.png")) {image in
            image
                .resizable()
                .scaledToFit()
        } placeholder: {
            ProgressView()
        }
        .frame(width: 200, height: 200)
        
        AsyncImage(url: URL(string: "https://hws.dev/img/logo.png")) {phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
            } else if phase.error != nil {
                Text("there was error")
            } else {
                ProgressView()
            }
        }
        .frame(width: 200, height: 200)
        
    }
}

#Preview {
    LoadingImage()
}
