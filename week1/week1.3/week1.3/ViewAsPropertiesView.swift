//
//  ViewAsPropertiesView.swift
//  week1.3
//
//  Created by MICHAIL SHAKHVOROSTOV on 01.11.2023.
//

import SwiftUI

struct ViewAsPropertiesView: View {
    
    var motto1: some View {
        Text("Draco dormiens")
            .foregroundStyle(.orange)
    }
    let motto2 = Text("nunquan titillandus")
    
    var spells: some View {
        Group {
            Text("Lumos")
            Text("Oblivians")
        }
    }
    
    @ViewBuilder var spellsTest: some View {
        Text("Test")
        Text("test2")
    }
    
    var body: some View {
        motto1
            .foregroundStyle(.red)
        motto2
            .foregroundStyle(.blue)
        
        spells
        
        spellsTest
    }
}

#Preview {
    ViewAsPropertiesView()
}
