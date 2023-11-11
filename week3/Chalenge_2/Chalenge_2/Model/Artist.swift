//
//  Artist.swift
//  Chalenge_2
//
//  Created by MICHAIL SHAKHVOROSTOV on 10.11.2023.
//

import Foundation


struct ArtistModel: Codable {
    let artists: [Artist]
}

struct Artist: Codable {
    let name: String
    let bio: String
    let image: String
    let works: [Works]
}

struct Works: Codable {
    let title: String
    let image: String
    let info: String
}
