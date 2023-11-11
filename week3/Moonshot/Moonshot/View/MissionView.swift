//
//  MissionView.swift
//  Moonshot
//
//  Created by MICHAIL SHAKHVOROSTOV on 09.11.2023.
//

import SwiftUI

struct CrewMember {
    let role: String
    let astronaut: Astronaut
}

struct MissionView: View {
    
    let mission: Missions
    let crew: [CrewMember]
    
    var body: some View {
        ScrollView {
            VStack {
                MapView()
                    .frame(height: 400)
     
                CircleImageView(imageName: mission.image)
                    .containerRelativeFrame(.horizontal) {width, axis in
                        width * 0.6
                    }
                    .offset(y: -130)
                    .padding(.bottom, -120)

                Image(.americanFlag)
                    .resizable()
                    .frame(width: .infinity, height: 180)
                    .padding(-10)
                
                VStack(alignment: .leading) {
                    Rectangle()
                        .frame(height: 2)
                        .foregroundStyle(.lightBackgroudn)
                        .padding(.vertical)
                    
                    Text("Mission Highlits")
                        .font(.largeTitle.width(.compressed).bold())
                        .padding(.bottom, 5)
                    
                    Text("Mission date \(mission.formattedLaunchDate)")
                        .padding(.bottom, 10)
                        .font(.title2.width(.compressed))
                    
                    CaruselAstronautsView(crew: crew)
                    
                    Text(mission.description)
                        
                    
                    Rectangle()
                        .frame(height: 2)
                        .foregroundStyle(.lightBackgroudn)
                        .padding(.vertical)
                    
                    Text("Crew")
                        .font(.title.width(.compressed))
                        .padding(.bottom, 5)
                }
                .padding(.horizontal)
                
                
            }
            .padding(.bottom)
       
        }
        .ignoresSafeArea()
        .navigationTitle(mission.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .background(.darkBackground)
    }
    
    init(mission: Missions, astronauts: [String: Astronaut]) {
        
        self.mission = mission
        
        self.crew = mission.crew.map {member in
            if let astronaunt = astronauts[member.name] {
                return CrewMember(role: member.role, astronaut: astronaunt)
            } else {
                fatalError("Missing \(member.name)")
            }
        }
    }
       
}

#Preview {
    let missions: [Missions] = Bundle.main.decode("missions.json")
    let astronaut: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    return MissionView(mission: missions[1], astronauts: astronaut)
            .preferredColorScheme(.dark)
}
