//
//  ForEachView.swift
//  week1
//
//  Created by MICHAIL SHAKHVOROSTOV on 25.10.2023.
//

import SwiftUI

struct ForEachView: View {
    
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selesctedStudent = "Harry"
    
    var body: some View {
        
        NavigationStack {
            Form {
                Picker("Select student", selection: $selesctedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
//        Form {
//            ForEach(0..<100) {
//                Text("Row \($0)")
//            }
//        }

    }
}

#Preview {
    ForEachView()
}
