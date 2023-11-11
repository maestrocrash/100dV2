//
//  DeleteItems.swift
//  week3.2
//
//  Created by MICHAIL SHAKHVOROSTOV on 07.11.2023.
//

import SwiftUI

struct DeleteItems: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(numbers, id: \.self) {
                        Text("Row \($0)")
                    }
                    .onDelete(perform: { indexSet in
                        removeRows(at: indexSet)
                    })
                }
                
                Button("Add number") {
                    numbers.append(currentNumber)
                    currentNumber += 1
                }
            }
            .toolbar {
                EditButton()
            }
        }    
    }
    
    func removeRows(at offset: IndexSet) {
        numbers.remove(atOffsets: offset)
    }
}

#Preview {
    DeleteItems()
}
