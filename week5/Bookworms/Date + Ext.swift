//
//  Date + Ext.swift
//  Bookworms
//
//  Created by MICHAIL SHAKHVOROSTOV on 28.11.2023.
//

import Foundation

extension Date {
    func getFormattedDate(format: String) -> String {
            let dateformat = DateFormatter()
            dateformat.dateFormat = format
            return dateformat.string(from: self)
        }
}
