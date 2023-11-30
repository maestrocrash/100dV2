//
//  week5_2App.swift
//  week5.2
//
//  Created by MICHAIL SHAKHVOROSTOV on 29.11.2023.
//

import SwiftData
import SwiftUI

@main
struct week5_2App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
