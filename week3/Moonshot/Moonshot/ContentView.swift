//
//  ContentView.swift
//  Moonshot
//
//  Created by MICHAIL SHAKHVOROSTOV on 09.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Missions] = Bundle.main.decode("missions.json")
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(missions) {mission in
                        NavigationLink {
                            MissionView(mission: mission, astronauts: astronauts)
                                
                        } label: {
                            VStack {
                              
                                Image(mission.image)
                                    .resizable()
                                    .scaledToFit()
                                    .padding(5)
                                    .frame(width: 100, height: 100)

                                VStack {
                                    Text(mission.displayName)
                                        .font(.headline)
                                        .foregroundStyle(.white)
                                    
                                    Text(mission.formattedLaunchDate)
                                        .foregroundStyle(.white.opacity(0.5))
                                        .font(.caption)
                                     
                                }
                                .frame(maxWidth: .infinity)
                                .padding(.vertical)
                                .background(.thinMaterial)
                            }
                            .clipShape(.rect(cornerRadius: 10))
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.lightBackgroudn)
                            )
                        }
                    }
                }
                .padding([.horizontal, .bottom])
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
        }
    }
}

#Preview {
    ContentView()
}
