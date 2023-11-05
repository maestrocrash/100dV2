//
//  ContentView.swift
//  chalengeOne
//
//  Created by MICHAIL SHAKHVOROSTOV on 03.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    enum EnumValue: String, CaseIterable, Identifiable {
        case mm, sm, m, km
        
        var id: Self { self }
    }
    
    @State private var valueOne: EnumValue = .m
    @State private var valueSecond: EnumValue = .m
    @State private var originalData = 0.0
    @State private var answerValue = 1
    
    
    var testAnswer: Double {
        
        return Double(Rechange(valOne: valueOne, valSecond: valueSecond, data: originalData))
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Что преобразовать") {
                    Picker("Value One", selection: $valueOne) {
                        ForEach(EnumValue.allCases) {
                            Text($0.rawValue.capitalized.lowercased())
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section("Во что преобразовать") {
                    Picker("Value Secong", selection: $valueSecond) {
                        ForEach(EnumValue.allCases) {
                            Text($0.rawValue.capitalized.lowercased())
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section("Ввод данных") {
                    TextField("Data", value: $originalData, formatter: NumberFormatter())
                        .keyboardType(.numberPad)
                }
                
                VStack(alignment: .center) {
                    Text("Answer")
                    
                    Text("\(testAnswer.formatted())")
                        .font(.largeTitle.weight(.bold))
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)

            }
            .navigationTitle("Length conversion")
        }
    }
    
    func Rechange(valOne: EnumValue, valSecond: EnumValue, data: Double) -> Double{
        
        var answerValue = 0.0
        
        switch valOne {
        case .mm:
            switch valSecond {
            case .mm:
                answerValue = data
            case .sm:
                answerValue = data * 0.1
            case .m:
                answerValue = data * 0.001
            case .km:
                answerValue = data * 0.000001
            }
        case .sm:
            switch valSecond {
            case .mm:
                answerValue = data / 10
            case .sm:
                answerValue = data
            case .m:
                answerValue = data * 0.01
            case .km:
                answerValue = data * 0.0001
            }
        case .m:
            switch valSecond {
            case .mm:
                answerValue = data * 1000
            case .sm:
                answerValue = data * 100
            case .m:
                answerValue = data
            case .km:
                answerValue = data * 0.001
            }
        case .km:
            switch valSecond {
            case .mm:
                answerValue = data * 1000000
            case .sm:
                answerValue = data * 100000
            case .m:
                answerValue = data * 1000
            case .km:
                answerValue = data
            }
        }
        
        
        
        return answerValue
    }
}

#Preview {
    ContentView()
}
