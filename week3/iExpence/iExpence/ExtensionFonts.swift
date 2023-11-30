//
//  ExtensionFonts.swift
//  iExpence
//
//  Created by MICHAIL SHAKHVOROSTOV on 08.11.2023.
//

import SwiftUI

struct Title10: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.red)
            .clipShape(.rect(cornerRadius: 15))
    }
}

struct Title100: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 15))
    }
}

struct Title1000: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.green)
            .clipShape(.rect(cornerRadius: 15))
    }
}

extension View {
    func titleStyle10() -> some View {
        modifier(Title10())
    }
    
    func titleStyle100() -> some View {
        modifier(Title100())
    }
    
    func titleStyle1000() -> some View {
        modifier(Title1000())
    }
}


