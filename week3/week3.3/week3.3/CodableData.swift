//
//  CodableData.swift
//  week3.3
//
//  Created by MICHAIL SHAKHVOROSTOV on 09.11.2023.
//

import SwiftUI

struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let city: String
}

struct CodableData: View {
    var body: some View {
        Button("Decode JSON") {
            let input = """
            {
                "name": "Ironman",
                "address": {
                    "street": "Marvel avenue",
                    "city": "NewYork"
                }
            
            }
            """
            
            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            
            if let user = try? decoder.decode(User.self, from: data) {
                print(user.address.street)
            }
        }
    }
}

#Preview {
    CodableData()
}
