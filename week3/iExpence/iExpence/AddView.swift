//
//  AddView.swift
//  iExpence
//
//  Created by MICHAIL SHAKHVOROSTOV on 08.11.2023.
//

import SwiftUI

struct AddView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = 0.0
    @State private var currency: currencyEnum = .USD

    var expense: Expenses
    
    let types = ["Business", "Personal"]
    
    var body: some View {
        NavigationStack {
 
            Form {
                TextField("Name", text: $name)
                
                Picker("Type", selection: $type) {
                    ForEach(types, id: \.self) {
                        Text($0)
                    }
                }
                Picker("Currency", selection: $currency) {
                    ForEach(currencyEnum.allCases, id: \.self) {curr in
                        Text(String(describing: curr))

                    }
                }

                TextField("Amount", value: $amount, format: .currency(code: "USD"))
                    .keyboardType(.decimalPad)
            }
            .navigationTitle("Add new expenses")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save") {
                        let item = ExpenseItem(name: name, type: type, currenncy: currency, amount: amount)
                    
                        expense.items.append(item)
                        dismiss()
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden()
        }
        
    }
}

#Preview {
    AddView(expense: Expenses())
}
