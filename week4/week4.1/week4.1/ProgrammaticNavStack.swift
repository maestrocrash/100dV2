//
//  ProgrammaticNavStacj.swift
//  week4.1
//
//  Created by MICHAIL SHAKHVOROSTOV on 21.11.2023.
//

import SwiftUI

struct ProgrammaticNavStack: View {
    @State private var path = [Int]()
    
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Button("Show 32") {
                    path = [32]
                }
                
                Button("Show 64") {
                    path.append(64)
                }
                
                Button("Show 32 then 64") {
                    path = [32, 64]
                }
            }
            .navigationDestination(for: Int.self) { selection in
                Text("You selected \(selection)")
            }
        }
    }
}

#Preview {
    ProgrammaticNavStack()
}
