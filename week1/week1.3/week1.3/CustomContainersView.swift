//
//  CustomContainersView.swift
//  week1.3
//
//  Created by MICHAIL SHAKHVOROSTOV on 01.11.2023.
//

import SwiftUI

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    @ViewBuilder let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<columns, id: \.self) {column in
                        content(row, column)
                    }
                }
                
            }
        }
    }
}

struct CustomContainersView: View {
    var body: some View {
        GridStack(rows: 4, columns: 4) { row, column in
  //          HStack {
                Image(systemName: "\(row * 4 + column).circle")
                Text("R\(row) C\(column)")
    //        }
        }
    }
}

#Preview {
    CustomContainersView()
}
