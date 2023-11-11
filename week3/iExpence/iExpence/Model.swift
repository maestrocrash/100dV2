//
//  Model.swift
//  iExpense
//
//  Created by MICHAIL SHAKHVOROSTOV on 08.11.2023.
//

import SwiftUI

enum currencyEnum: String, CaseIterable, Identifiable, Codable {
    case USD = "USD"
    case RUB = "RUB"
    case EUR = "EUR"
    
    var id: Self { self }
}

struct ExpenseItem: Identifiable, Codable {

    var id = UUID()
    let name:  String
    let type: String
    let currenncy: currencyEnum
    let amount: Double
    
}

@Observable
class Expenses {
    var items = [ExpenseItem]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }
    
    init() {
        if let savedItem = UserDefaults.standard.data(forKey: "Items") {
            if let decodeItems = try? JSONDecoder().decode([ExpenseItem].self, from: savedItem) {
                items = decodeItems
                return
            }
        }
        
        items = []
    }
}
