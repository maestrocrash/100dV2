//
//  Austronaut.swift
//  Moonshot
//
//  Created by MICHAIL SHAKHVOROSTOV on 09.11.2023.
//

import Foundation

struct Astronaut: Codable, Identifiable, Hashable {
    let id: String
    let name: String
    let description: String
}
