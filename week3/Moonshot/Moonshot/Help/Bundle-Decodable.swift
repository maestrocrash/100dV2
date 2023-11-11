//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by MICHAIL SHAKHVOROSTOV on 09.11.2023.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locata")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Error data")
        }
        
        let decoder = JSONDecoder()
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed decode")
        }
        
        return loaded
    }
}
