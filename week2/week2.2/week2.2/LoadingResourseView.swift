//
//  LoadingResourseView.swift
//  week2.2
//
//  Created by MICHAIL SHAKHVOROSTOV on 02.11.2023.
//

import SwiftUI

struct LoadingResourseView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    func testBundle() {
        if let fileURL = Bundle.main.url(forResource: "somefile", withExtension: "txt") {
            if let fileContents = try? String(contentsOf: fileURL) {
                
            }
        } else {
            
        }
    }
}

#Preview {
    LoadingResourseView()
}
