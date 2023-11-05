//
//  ContentView.swift
//  BetterRest
//
//  Created by MICHAIL SHAKHVOROSTOV on 01.11.2023.
//

import CoreML
import SwiftUI

struct ContentView: View {
    @State private var wakeUp = defaultWakeTime
    @State private var sleepAmount = 8.0
    @State private var coffeAmount = 1
    
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    @State private var alertShow = false
    
    
    
    static var defaultWakeTime: Date {
        var componenets = DateComponents()
        componenets.hour = 7
        componenets.minute = 0
        
        return Calendar.current.date(from: componenets) ?? .now
    }
    
    var body: some View {
        NavigationStack {
            Form {
                VStack(alignment: .leading) {
                    Text("When do you want to wake up?")
                        .font(.headline)
                    
                    DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                        .labelsHidden()
                }
                
                Section("Desired amount of sleep")  {
                 //   Text("Desired amount of sleep")
                   //     .font(.headline)
                    
                    Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                }
                
                VStack(alignment: .leading)  {
                    Text("Daile coffee intake")
                        .font(.headline)
                    //Stepper(coffeAmount == 1 ? "1 cup" : "\(coffeAmount) cups", value: $coffeAmount, in: 1...20)
                    
                 //   Stepper("^[\(coffeAmount) cup](inflect: true)", value: $coffeAmount, in: 1...20)
                    
                    Picker("Cups coffe", selection: $coffeAmount) {
                        ForEach(1...20, id: \.self) { number in
                            Text("\(number)")
                        }
                    }
                    //.pickerStyle(.wheel)
                }
                
                Text("Sleep time \(sleepTime())")
            }
            .navigationTitle("BetterRest")
            //.padding()
            .toolbar {
                 Button("Calculate", action: calculateBedtime)
            }
            .alert(alertTitle, isPresented: $alertShow) {
                Button("OK") { }
            } message: {
                Text(alertMessage)
            }
        }
        
    }
    
    func sleepTime() -> String {
        var timeSleep: String = ""
        
        do {
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)
            
            let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
            let hour = (components.hour ?? 0) * 60 * 60
            let minute = (components.minute ?? 0) * 60
            
            let prediction = try model.prediction(wake: Double(hour + minute), estimatedSleep: sleepAmount, coffee: Double(coffeAmount))
            
            let sleepTime = wakeUp - prediction.actualSleep
            
            timeSleep = sleepTime.formatted(date: .omitted, time: .shortened)
            
        } catch {
            timeSleep = "Time error"
        }
        
        return timeSleep
    }
    
    func calculateBedtime() {
        do {
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)
            
            let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
            let hour = (components.hour ?? 0) * 60 * 60
            let minute = (components.minute ?? 0) * 60
            
            let prediction = try model.prediction(wake: Double(hour + minute), estimatedSleep: sleepAmount, coffee: Double(coffeAmount))
            
            let sleepTime = wakeUp - prediction.actualSleep
            
            
            alertTitle = "Your ideal bedtime is ..."
            alertMessage = sleepTime.formatted(date: .omitted, time: .shortened)
            
        } catch {
            alertTitle = "Error"
            alertMessage = "Sorry "
        }
        
        alertShow = true
    }
}

#Preview {
    ContentView()
}
