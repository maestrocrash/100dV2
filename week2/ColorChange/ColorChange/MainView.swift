//
//  MainView.swift
//  ColorChange
//
//  Created by MICHAIL SHAKHVOROSTOV on 04.11.2023.
//

import SwiftUI

struct ColorStruct: Hashable {
    var oneColor: Color
    var secondColor: Color
}

struct MainView: View {
    @State private var selectedColorOne: Color = .blue
    @State private var selectedColorSecond: Color = .red

    var body: some View {
        NavigationStack {
            VStack {
                RectangleColor(colorRectangle: $selectedColorOne)
                                
                Text("\(selectedColorOne.description)")
                    .font(.system(size: 25))
            }
            
            VStack {
                RectangleColor(colorRectangle: $selectedColorSecond)
                
                Text("\(selectedColorSecond.description)")
                    .font(.system(size: 25))
            }
            
            .navigationTitle("Mix Color")
            
            VStack {
               
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 100, height: 100)
                    .foregroundStyle(checkColor(oneColor: selectedColorOne, secondColor: selectedColorSecond))
                    .shadow(color: checkColor(oneColor: selectedColorOne, secondColor: selectedColorSecond), radius: 10)
                
                Text("\(checkColor(oneColor: selectedColorOne, secondColor: selectedColorSecond).description)")
                    .font(.system(size: 25))
            }
            
            .navigationTitle("Mix Color")
            
//            ZStack {
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(width: 100, height: 100)
//                    .foregroundStyle(selectedColorOne)
//                
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(width: 100, height: 100)
//                    .foregroundStyle(selectedColorSecond)
//                    .blendMode(.screen)
//                    
//            }
            
        }
    }
    
    func checkColor(oneColor: Color, secondColor: Color) -> Color {
        
        var answerColor: Color = .mint
        
        let dictionary: [ColorStruct: Color] = [
            ColorStruct(oneColor: .blue, secondColor: .red): .purple,
            ColorStruct(oneColor: .yellow, secondColor: .red): .green,
        ]
        
        guard oneColor != secondColor else {
            answerColor = oneColor
            return answerColor
        }
        
        for mixColor in dictionary {
            if (mixColor.key.oneColor == oneColor || mixColor.key.oneColor == secondColor)  && (mixColor.key.secondColor == secondColor || mixColor.key.secondColor == oneColor) {
                answerColor = mixColor.value
            }
        }

        return answerColor
    }
}

#Preview {
    MainView()
}
