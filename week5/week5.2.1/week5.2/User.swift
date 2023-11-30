//
//  User.swift
//  week5.2
//
//  Created by MICHAIL SHAKHVOROSTOV on 29.11.2023.
//

import Foundation
import SwiftData


@Model
class User {
    var name: String
    var city: String
    var joinData: Date
    
    init(name: String, city: String, joinData: Date) {
        self.name = name
        self.city = city
        self.joinData = joinData
    }
}
