//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by MICHAIL SHAKHVOROSTOV on 30.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var score = 0
    
    
    @State private var showiingScore = false
    @State private var scoreTitle = ""
    
    var body: some View {
        ZStack {
//            LinearGradient(colors: [.blue, .black, .blue.opacity(0.8)], startPoint: .top, endPoint: .bottom)
//                .ignoresSafeArea()
            
            RadialGradient(stops:
                            [
                                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                                .init(color: Color(red: 0.76, green: 0.15, blue: 0.25), location: 0.3)
                            ],
                           center: .top, startRadius: 200, endRadius: 700)
            .ignoresSafeArea()
            
            VStack {
                Spacer()
                Text("Gues the Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundStyle(.white)
                
                VStack(spacing: 20) {
                    VStack {
                        Text("Tap the flag of")
                            .font(.subheadline.weight(.heavy))
                            .foregroundStyle(.secondary)
                        
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                            .foregroundStyle(.secondary)
                    }
                    
                    ForEach(0..<3) {number in
                        Button {
                            flagTapperd(number)
                        } label: {
                            FlagImage(imageName: countries[number])
                        }
                        
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius:15))
                
                Spacer()
                
                Text("Score:\(score)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding(20)
        }
        .alert(scoreTitle, isPresented: $showiingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(score)")
        }
        
    }
    
    func flagTapperd( _ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong this is flag \(countries[number])"
            score = 0
        }
        
        showiingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0..<2)
    }
}

#Preview {
    ContentView()
}
