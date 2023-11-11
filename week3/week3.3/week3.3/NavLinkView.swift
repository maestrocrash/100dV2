//
//  NavLinkView.swift
//  week3.3
//
//  Created by MICHAIL SHAKHVOROSTOV on 09.11.2023.
//

import SwiftUI

struct NavLinkView: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
                Text("Detail me")
            } label: {
                VStack {
                    Text("This is the Label")
                    Text("So is this")
                    Image(systemName: "face.smiling")
                }
                .font(.largeTitle)
            }
            .navigationTitle("Swift UI")
        }
    }
}

#Preview {
    NavLinkView()
}
