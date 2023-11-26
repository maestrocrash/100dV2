//
//  MainVIew.swift
//  habitsAppChalenge
//
//  Created by MICHAIL SHAKHVOROSTOV on 24.11.2023.
//

import SwiftUI

struct MainVIew: View {
    
    var habits: Habits
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(habits.habitsItems) {habits in
//                    NavigationLink(value: habits) {
//                        Text(habits.name)
//                    }
                    
                    NavigationLink {
                        HabitsDetail(habits: habits)
                    } label: {
                        Text(habits.name)
                    }
                }

            }
            .navigationTitle("My habits")
            .toolbar {
                NavigationLink {
                    AddHabitsView(habits: habits)
                } label: {
                    Image(systemName: "plus")
                }
            }
            .navigationDestination(for: HabitsModel.self) { habits in
                HabitsDetail(habits: habits)
            }
            
        }

    }
}

