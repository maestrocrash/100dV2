//
//  SaveUserDefaults.swift
//  week3.2
//
//  Created by MICHAIL SHAKHVOROSTOV on 07.11.2023.
//

import SwiftUI

struct SaveUserDefaults: View {
    
    //@State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    
    @AppStorage("tap") private var tapCount = 0
    
    var body: some View {
        Button("tapcount = \(tapCount)") {
            
            tapCount += 1
    
         //   UserDefaults.standard.set(tapCount, forKey: "Tap")
        }
    }
}

#Preview {
    SaveUserDefaults()
}
