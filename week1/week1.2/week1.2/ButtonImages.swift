//
//  ButtonImages.swift
//  week1.2
//
//  Created by MICHAIL SHAKHVOROSTOV on 30.10.2023.
//

import SwiftUI

struct ButtonImages: View {
    var body: some View {
        Button("Delete selection", role: .destructive,  action: executeDelete)
            .buttonStyle(.borderedProminent)
        
        Button("Button 1") {}
            .buttonStyle(.bordered)
            .tint(.yellow)
        
        Button("Button 2") {}
            .buttonStyle(.borderedProminent)
            .tint(.yellow)
        
        
        Button {
            print("Tap button")
        } label: {
            Text("Tap button")
                .padding(10)
                .foregroundStyle(.black)
                .background(.red)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        
        
        Button("Edit", systemImage: "pencil") {
            print("111")
        }
        .buttonStyle(.borderedProminent)
        
        Button {
            print("text")
        } label: {
            Label("Edit", systemImage: "pencil.circle")
        }
        .font(.largeTitle)
        .buttonStyle(.borderedProminent)
        .tint(.purple)
        
        Button {
            print("test button 1")
        } label: {
            VStack {
                Text("Button")
                Image(systemName: "pencil.circle")
            }
        }
        .font(.title)
        .buttonStyle(.borderless)
        .tint(.green)
        
        Image(systemName: "pencil")
            .font(.largeTitle)
            .foregroundStyle(.black)
            .padding(10)
        
        Image("")
        Image(decorative: "")
    }
    
    
    func executeDelete() {
        print("Now deleting")
    }
}

#Preview {
    ButtonImages()
}
