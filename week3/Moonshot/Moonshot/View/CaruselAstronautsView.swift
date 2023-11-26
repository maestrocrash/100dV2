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
                    NavigationLink(value: crewMember.astronaut) {
                        HStack {
                            CircleImageView(imageName: crewMember.astronaut.id)
                                .containerRelativeFrame(.horizontal) {width, _ in
                                    width * 0.4
                                }
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
                    
//                    NavigationLink {
//                        AstronautsView(astronaut: crewMember.astronaut)
//                    } label: {
//                        HStack {
//                            CircleImageView(imageName: crewMember.astronaut.id)
//                                .containerRelativeFrame(.horizontal) {width, _ in
//                                    width * 0.4
//                                }
//                            VStack(alignment: .leading) {
//                                Text(crewMember.astronaut.name)
//                                    .foregroundStyle(.white)
//                                    .font(.headline)
//                                
//                                Text(crewMember.role)
//                                    .foregroundStyle(.white.opacity(0.5))
//                            }
//                        }
//                        .padding(.horizontal)
//                    }
                }
            }
            .navigationDestination(for: Astronaut.self ) { astronaut in
                AstronautsView(astronaut: astronaut)
            }
            .padding(.vertical, 5)
        }
    }
}

//#Preview {
//    CaruselAstronautsView()
//}
