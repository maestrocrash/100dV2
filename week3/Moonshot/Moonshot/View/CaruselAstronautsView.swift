//
//  CaruselAstronautsView.swift
//  Moonshot
//
//  Created by MICHAIL SHAKHVOROSTOV on 10.11.2023.
//

import SwiftUI

struct CaruselAstronautsView: View {
    let crew: [CrewMember]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(crew, id: \.role) {crewMember in
                    NavigationLink {
                        AstronautsView(astronaut: crewMember.astronaut)
                    } label: {
                        HStack {
                            CircleImageView(imageName: crewMember.astronaut.id)
                                .containerRelativeFrame(.horizontal) {width, axis in
                                    width * 0.4
                                }
                              //  .padding(.horizontal, -19)
                            
//                                    Image(crewMember.astronaut.id)
//                                        .resizable()
//                                        .frame(width: 104, height: 72)
//                                        .clipShape(.capsule)
//                                        .overlay(
//                                            Capsule()
//                                                .strokeBorder(.white, lineWidth: 1)
//                                        )
                            
                            VStack(alignment: .leading) {
                                Text(crewMember.astronaut.name)
                                    .foregroundStyle(.white)
                                    .font(.headline)
                                
                                Text(crewMember.role)
                                    .foregroundStyle(.white.opacity(0.5))
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .padding(.vertical, 5)
        }
    }
}

//#Preview {
//    CaruselAstronautsView()
//}
