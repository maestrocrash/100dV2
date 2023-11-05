//
//  CustomModifi.swift
//  week1.3
//
//  Created by MICHAIL SHAKHVOROSTOV on 01.11.2023.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 15))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct TitleBlue: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle.weight(.bold))
            .foregroundStyle(.blue)
            .padding()
    }
}

extension View {
    func titleStyleBlue() -> some View {
        modifier(TitleBlue())
    }
}

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            
            Text(text)
                .foregroundStyle(.white)
                .font(.caption)
                .padding(5)
                .background(.black)
        }
            
    }
    
}

extension View {
    func watermarkTitle(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct CustomModifi: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .modifier(Title())
        
        Text("Hello Style")
            .titleStyle()
        
        Color.blue
            .frame(width: 300, height: 200, alignment: .center)
            .watermarkTitle(with: "Hello Shakhvorostov")
        
        Text("Title blue")
            .titleStyleBlue()
    }
}

#Preview {
    CustomModifi()
}
