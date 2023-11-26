//
//  CodableObservable.swift
//  week4.2
//
//  Created by MICHAIL SHAKHVOROSTOV on 22.11.2023.
//

import SwiftUI

@Observable
class User: Codable {
    enum CodingKeys: String, CodingKey {
        case _name = "name"
    }
    
    var name: String = "Taylor"
}

struct CodableObservable: View {
    var body: some View {
        Button("Tap me", action: encodeTaylor)
        .buttonStyle(.borderedProminent)
    }
    
    func encodeTaylor() {
        let data = try! JSONEncoder().encode(User())
        let str = String(decoding: data, as: UTF8.self)
        print(str)
    }
}

#Preview {
    CodableObservable()
}
