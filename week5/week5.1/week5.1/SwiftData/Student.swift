//
//  Student.swift
//  week5.1
//
//  Created by MICHAIL SHAKHVOROSTOV on 27.11.2023.
//

import Foundation
import SwiftData


@Model
class Student {
    var id: UUID
    var name: String
    
    init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
}
