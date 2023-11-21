//
//  Language.swift
//  Chalenge_2
//
//  Created by MICHAIL SHAKHVOROSTOV on 19.11.2023.
//

import Foundation


enum Language: String {
    case russian = "ru"
    case english_us = "us"
    
    var userSymbol: String {
        switch self {
        case .english_us:
            return "us"
        default:
            return rawValue
        }
    }
    
    mutating func toggle() {
        switch self {
        case .english_us:
            self = .russian
        case .russian:
            self = .english_us
        }
        
    }

}
