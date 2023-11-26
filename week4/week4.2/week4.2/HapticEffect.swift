//
//  HapticEffect.swift
//  week4.2
//
//  Created by MICHAIL SHAKHVOROSTOV on 22.11.2023.
//

import CoreHaptics
import SwiftUI

struct HapticEffect: View {
    @State private var counter = 0
    @State private var engine: CHHapticEngine?
    
    var body: some View {
        Button("Tap me ") {
            complexSuccess()
            
            //counter += 1
        }
        .onAppear(perform: prepareHaptics)
        //.sensoryFeedback(.increase, trigger: counter) стадартный метод
        
       // .sensoryFeedback(.impact(flexibility: .soft, intensity: 0), trigger: counter)
    }
    
    func prepareHaptics() {
        
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else {return}
        
        do {
            engine = try CHHapticEngine()
            try engine?.start()
        } catch {
            print("Error engine \(error.localizedDescription)")
        }
    }
    
    func complexSuccess() {
        
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else {return}
        
        var events = [CHHapticEvent]()
        
        var intense = CHHapticEventParameter(parameterID: .hapticIntensity, value: 1)
        var sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 1)
        let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intense, sharpness], relativeTime: 0)
        
        events.append(event)
        
        do {
            let pattern = try CHHapticPattern(events: events, parameters: [])
            let player = try engine?.makePlayer(with: pattern)
            
            try player?.stop(atTime: 0)
        } catch {
            print("fail \(error.localizedDescription)")
        }
    }
}

#Preview {
    HapticEffect()
}
