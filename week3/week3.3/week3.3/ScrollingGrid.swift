//
//  ScrollingGrid.swift
//  week3.3
//
//  Created by MICHAIL SHAKHVOROSTOV on 09.11.2023.
//

import SwiftUI

struct ScrollingGrid: View {
    
    let columns = [
        GridItem(.adaptive(minimum: 80, maximum: 120))
    ]
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(0..<1000) {item in
                        NavigationLink {
                            Text("Detail")
                        } label: {
                            VStack {
                                Text(("Item \(item)"))
                            }
                        }
                    }
                }
            }
            .navigationTitle("Title")
        }
        
    }
}

#Preview {
    ScrollingGrid()
}
