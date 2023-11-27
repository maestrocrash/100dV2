//
//  week5_1App.swift
//  week5.1
//
//  Created by MICHAIL SHAKHVOROSTOV on 27.11.2023.
//

import SwiftData
import SwiftUI

@main
struct week5_1App: App {
    var body: some Scene {
        WindowGroup {
            SwiftDataSwiftUI()
        }
        .modelContainer(for: Student.self)
    }
}
