//
//  Habits.swift
//  habitsAppChalenge
//
//  Created by MICHAIL SHAKHVOROSTOV on 24.11.2023.
//

import Foundation

struct HabitsModel: Identifiable, Codable, Hashable {
    var id = UUID()
    var name: String
    
}

@Observable
class Habits {
    
    var habitsItems = [HabitsModel]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(habitsItems) {
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }
    
    init() {
        if let savedItems = UserDefaults.standard.data(forKey: "Items") {
            if let decodedItems = try? JSONDecoder().decode([HabitsModel].self, from: savedItems) {
                habitsItems = decodedItems
                return
            }
        }
        
        habitsItems = []
    }
    
}
