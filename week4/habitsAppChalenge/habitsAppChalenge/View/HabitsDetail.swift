//
//  HabitsDetail.swift
//  habitsAppChalenge
//
//  Created by MICHAIL SHAKHVOROSTOV on 24.11.2023.
//

import SwiftUI

struct HabitsDetail: View {
    
    var habits: HabitsModel
    
    var body: some View {
        VStack {
            Text(habits.name)
            
            //Text(habits)
        }
        .navigationTitle(habits.name)
    }
}

#Preview {
    HabitsDetail(habits: HabitsModel(name: "asd"))
}
