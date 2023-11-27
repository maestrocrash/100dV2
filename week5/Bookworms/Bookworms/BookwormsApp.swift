//
//  BookwormsApp.swift
//  Bookworms
//
//  Created by MICHAIL SHAKHVOROSTOV on 27.11.2023.
//

import SwiftData
import SwiftUI

@main
struct BookwormsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Book.self)
        }
    }
}
