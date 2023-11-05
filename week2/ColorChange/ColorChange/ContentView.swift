//
//  ContentView.swift
//  ColorChange
//
//  Created by MICHAIL SHAKHVOROSTOV on 04.11.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var colorOne: Color = .blue
    @State private var colorSecond: Color = .red
    
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {

                
                ColorPickerView(bgColor: $colorOne)
                    .frame(width: 200, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .foregroundStyle(colorOne)
                
                ColorPickerView(bgColor: $colorSecond)
                    .frame(width: 200, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .foregroundStyle(colorSecond)
                
                ZStack {
                    Rectangle()
                        .frame(width: 200, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .foregroundStyle(colorOne)

                    Rectangle()
                        .frame(width: 200, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .foregroundStyle(colorSecond)
                        .blendMode(.screen)
                }
            }
            .navigationTitle("Mix Color")
        }
    }
}

#Preview {
    ContentView()
}
