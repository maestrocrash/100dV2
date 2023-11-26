//
//  AddHabitsView.swift
//  habitsAppChalenge
//
//  Created by MICHAIL SHAKHVOROSTOV on 24.11.2023.
//

import SwiftUI

struct AddHabitsView: View {
    
    var habits: Habits
    
    @State private var nameHab = ""
    @State private var descripHab = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Name Habits", text: $nameHab)
                    
                    TextField("Description habits" , text: $descripHab)
                }
            }
            .navigationTitle("Add Habits")
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Button("Tap me") {
                        
                        let item = HabitsModel(name: nameHab)
                        
                        habits.habitsItems.append(item)
                        dismiss()
                    }
                        .buttonStyle(.borderedProminent)
                }
            }
        }
    }
}

//#Preview {
//    AddHabitsView()
//}
