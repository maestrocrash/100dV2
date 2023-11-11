//
//  Color-Theme.swift
//  Moonshot
//
//  Created by MICHAIL SHAKHVOROSTOV on 09.11.2023.
//

import SwiftUI

extension ShapeStyle where Self == Color {
    static var darkBackground: Color {
        Color(red: 0.1, green: 0.1, blue: 0.2)
    }
    
    static var lightBackgroudn: Color {
        Color(Resolved(red: 0.3, green: 0.2, blue: 0.3))
    }
}
