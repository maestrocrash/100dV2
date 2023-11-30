//
//  Job.swift
//  week5.2
//
//  Created by MICHAIL SHAKHVOROSTOV on 30.11.2023.
//

import Foundation
import SwiftData

@Model
class Job {
    var name: String
    var priority: Int
    var owner: User?
    
    init(name: String, priority: Int, owner: User? = nil) {
        self.name = name
        self.priority = priority
        self.owner = owner
    }
}
