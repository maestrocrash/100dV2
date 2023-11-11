//
//  Bundle-Decodable.swift
//  Chalenge_2
//
//  Created by MICHAIL SHAKHVOROSTOV on 10.11.2023.
//

import SwiftUI
import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locata")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Error data")
        }
        
        guard let loaded = try? JSONDecoder().decode(T.self, from: data) else {
            fatalError("Failed decode")
        }
        
        return loaded
    }
}
