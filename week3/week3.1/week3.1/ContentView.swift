//
//  ContentView.swift
//  week3.1
//
//  Created by MICHAIL SHAKHVOROSTOV on 06.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap me") {
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
//        .scaleEffect(animationAmount)//увеличение размера
//        .blur(radius: (animationAmount - 1) * 3) // размытие
      //  .animation(.spring,//разная скорость анимации spring по умолчанию
        //           value: animationAmount) //анимация
        
        /*
        .animation(.spring(duration: 1, bounce: 0.9),
                   value: (animationAmount - 1) * 2)
       
        .animation(.easeInOut(duration: 2)
                        .delay(1),//задержка
                   value: animationAmount)
         */
        .overlay(content: {
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2-animationAmount)
                .animation(.easeOut(duration: 0.5)
                                .repeatForever(autoreverses: false),
                           value: animationAmount)
        })
//        .onAppear{
//            animationAmount = 2
//        }
//        .animation(.easeInOut(duration: 0.5)
//                       // .repeatCount(2, autoreverses: true), //количество повторений
//                        .repeatForever(autoreverses: true), //бесконечная повторение анимации
//                   value: animationAmount)
    }
}

#Preview {
    ContentView()
}
