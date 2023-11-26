//
//  AddressView.swift
//  Capcake
//
//  Created by MICHAIL SHAKHVOROSTOV on 22.11.2023.
//

import SwiftUI

struct AddressView: View {
    @State var order: Order
    
    var body: some View {
        Form {
            Section {
                TextField("Name", text: $order.name)
                TextField("Street Addreess", text: $order.streerAddress)
                TextField("City", text: $order.city)
                TextField("Zip", text: $order.zip)
            }
            
            Section {
                NavigationLink("Check out") {
                    CheckoutView(order: order)
                }
            }
            .disabled(order.hasValidAddress == false)
        }
        
        .navigationTitle("Delivere detail")
    }
}

#Preview {
    AddressView(order: Order())
}
