//
//  HandlingNaviagtion.swift
//  week4.1
//
//  Created by MICHAIL SHAKHVOROSTOV on 21.11.2023.
//

import SwiftUI

struct Student: Hashable {
    var id = UUID()
    var name: String
    var age: Int
}

struct HandlingNaviagtion: View {
    var body: some View {
        NavigationStack {
            List(0..<100) {i in
                NavigationLink("select \(i)", value: i)
            }
            .navigationDestination(for: Int.self) { selection in
                Text("You selected \(selection)")
            }
            .navigationDestination(for: Student.self) { student in
                Text("You selected \(student.name)")
            }
        }
    }
}

#Preview {
    HandlingNaviagtion()
}
