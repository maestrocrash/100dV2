//
//  ColorPickerView.swift
//  ColorChange
//
//  Created by MICHAIL SHAKHVOROSTOV on 04.11.2023.
//

import SwiftUI

struct ColorPickerView: View {
    @Binding var bgColor: Color

    var body: some View {
        VStack {
            ColorPicker("Set the background color", selection: $bgColor, supportsOpacity: false)
                .labelsHidden()
                
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(bgColor)

    }
}
