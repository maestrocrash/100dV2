//
//  ContentView.swift
//  Capcake
//
//  Created by MICHAIL SHAKHVOROSTOV on 22.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    @Bindable var order = Order()
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Picker("Select your cake types", selection: $order.type) {
                        ForEach(Order.types.indices, id: \.self) {
                            Text(Order.types[$0])
                        }
                    }
                    
                    Stepper("Number of cakes: \(order.quatity)", value: $order.quatity, in: 3...20)
                }
                
                Section {
                    Toggle("Any special requests?", isOn: $order.specialRequestEnabled)
                    
                    if order.specialRequestEnabled {
                        Toggle("Add extra frosting", isOn: $order.extraFrosting)
                        
                        Toggle("Add extra sprinkles", isOn: $order.addSprinkles)
                    }
                }
                
                Section {
                    NavigationLink("Detail delivery") {
                        AddressView(order: order)
                    }
                }
            }
            .navigationTitle("Cupcake Corner")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
