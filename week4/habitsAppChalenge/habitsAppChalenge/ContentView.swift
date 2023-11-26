//
//  ContentView.swift
//  habitsAppChalenge
//
//  Created by MICHAIL SHAKHVOROSTOV on 24.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var habits = Habits()
    
    var body: some View {
        MainVIew(habits: habits)
            
    }
}

#Preview {
    ContentView()
}
