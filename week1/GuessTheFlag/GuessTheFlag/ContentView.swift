//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by MICHAIL SHAKHVOROSTOV on 30.10.2023.
//

import ConfettiSwiftUI
import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var score = 0.0
    
    @State private var animationAmount = 0.0
    
    @State private var showiingScore = false
    @State private var scoreTitle = ""
    
    @State private var countQuestion = 0
    
    @State private var counter: Int = 0
    
    var percentTrueQustion: String {
        return "\(((100.0 * score) / 8).formatted()) %"
    }
    
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
                            withAnimation {
                                flagTapperd(number)
                                animationAmount -= 360
                            }
                            
                        } label: {
                            FlagImage(imageName: countries[number])
                               // .animation(.easeIn, value: trueAnswer)
                                .rotation3DEffect(
                                .degrees(animationAmount),
                                axis: (x: 0.0, y: 1.0, z: 0.0)
                            )
                        }
                        
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius:15))
                
                Spacer()
                
//                Text("Score:\(score)")
//                    .foregroundStyle(.white)
//                    .font(.title.bold())
                
                Spacer()
            }
            .padding(20)
        }
        .alert("Game Over", isPresented: $showiingScore) {
            Button("New game", action: newGame)
        } message: {
            Text("You answered correctly out of 8 questions \(score.formatted()) \n This is \(percentTrueQustion)")
        }.confettiCannon(counter: $counter, repetitions: 3, repetitionInterval: 0.7)
    }
    
    func flagTapperd( _ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
            countQuestion += 1
            askQuestion()
        } else {
            scoreTitle = "Wrong this is flag \(countries[number])"
            //score = 0
            countQuestion += 1
            askQuestion()
        }
        
        guard countQuestion != 8 else {
            counter += 1
            return showiingScore = true
        }
    }
    
    func newGame() {
        countQuestion = 0
        score = 0
        askQuestion()
    }
 
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0..<2)
    }
}

#Preview {
    ContentView()
}
