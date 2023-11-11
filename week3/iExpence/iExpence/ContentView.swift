//
//  ContentView.swift
//  iExpence
//
//  Created by MICHAIL SHAKHVOROSTOV on 08.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var expenses = Expenses()
    @State private var showingAddExpenses = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(expenses.items) {item in
                    HStack {
                        VStack(alignment: .leading, spacing: 5) {
                            Text(item.name)
                                .font(.headline)
                            
                            Text("\(item.type)")
                                .font(.subheadline)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                        
                        if item.amount < 10 {
                            Text(item.amount, format: .currency(code: item.currenncy.rawValue))
                                .titleStyle10()
                        } else if item.amount < 100 {
                            Text(item.amount, format: .currency(code: item.currenncy.rawValue))
                                .titleStyle100()
                        } else {
                            Text(item.amount, format: .currency(code: item.currenncy.rawValue))
                                .titleStyle1000()
                        }
                    
                    }
                }
                .onDelete(perform: removeItem)
            }
            .navigationTitle("iExpenses")
            .toolbar {
                Button("Add Expanses", systemImage: "plus") {
                    showingAddExpenses = true
                }
            }
            .sheet(isPresented: $showingAddExpenses) {
                AddView(expense: expenses)
            }
            
        }
    }
    
    func removeItem(at offset: IndexSet) {
        expenses.items.remove(atOffsets: offset)
    }
}

#Preview {
    ContentView()
}
