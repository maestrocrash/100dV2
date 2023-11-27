//
//  SwiftDataSwiftUI.swift
//  week5.1
//
//  Created by MICHAIL SHAKHVOROSTOV on 27.11.2023.
//

import SwiftData
import SwiftUI

struct SwiftDataSwiftUI: View {
    @Environment(\.modelContext) var modelContext
    @Query var students: [Student]
    
    var body: some View {
        NavigationStack {
            List(students) {student in
                Text(student.name)
            }
            .navigationTitle("Classroom")
            .toolbar {
                Button("Add") {
                    let firstName = ["Ginny", "Garry", "Ron", "Hermione"]
                    let lastName = ["Granger", "Potter", "Wesley", "Lovegood"]
                    
                    let chooseName = "\(firstName.randomElement()!)  \(lastName.randomElement()!)"
                    
                    let student = Student(id: UUID(), name: chooseName)
                    modelContext.insert(student)
                }
            }
        }
    }
}

#Preview {
    SwiftDataSwiftUI()
        .modelContainer(for: Student.self)
}
