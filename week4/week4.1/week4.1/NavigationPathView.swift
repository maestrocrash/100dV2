//
//  NavigationPathView.swift
//  week4.1
//
//  Created by MICHAIL SHAKHVOROSTOV on 21.11.2023.
//

import SwiftUI

struct NavigationPathView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                ForEach(0..<5) {i in
                    NavigationLink("Select Number \(i)", value: i)
                }
                
                ForEach(0..<5) {i in
                    NavigationLink("Select String \(i)", value: String(i))
                }
            }
            .toolbar {
                Button("Puch 556") {
                    path.append(556)
                }
                
                Button("Puch hello") {
                    path.append("Hello")
                }
            }
            .navigationDestination(for: Int.self) { selection in
                Text("You selectedasdasdasd the number \(selection)")
            }
            .navigationDestination(for: String.self) { selection in
                Text("You s1111111elected the string \(selection)")
            }
        }
        
    }
}

#Preview {
    NavigationPathView()
}
