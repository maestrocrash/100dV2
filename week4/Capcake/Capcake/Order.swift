//
//  Order.swift
//  Capcake
//
//  Created by MICHAIL SHAKHVOROSTOV on 22.11.2023.
//

import Foundation

@Observable
class Order: Codable {
    
    enum CodingKeys: String, CodingKey {
        case _type = "type"
        case _quatity = "quatity"
        case _specialRequestEnabled = "specialRequestEnabled"
        case _extraFrosting = "extraFrosting"
        case _addSprinkles = "addSprinkles"
        case _name = "name"
        case _streerAddress = "streerAddress"
        case _city = "city"
        case _zip = "zip"
    }
    
    static let types = ["Vanilla", "Strawberry", "Chocolate", "Rainbow"]
    
    var type = 0
    var quatity = 3
    
    var specialRequestEnabled = false {
        didSet {
            if specialRequestEnabled == false {
                extraFrosting = false
                addSprinkles = false
            }
        }
    }
    var extraFrosting = false
    var addSprinkles = false
    
    
    var name = ""
    var streerAddress = ""
    var city = ""
    var zip = ""
    
    var hasValidAddress: Bool {
        if name.isEmpty ||
            streerAddress.isEmpty ||
            city.isEmpty ||
            zip.isEmpty {
            return false
        } else {
            return true
        }
    }
    
    var cost: Decimal {
        var cost = Decimal(quatity) * 2
        
        cost += Decimal(type) / 2
        
        if extraFrosting {
            cost += Decimal(quatity)
        }
        
        if addSprinkles {
            cost += Decimal(quatity) / 2
        }
    
        return cost
    }
}
