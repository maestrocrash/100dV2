//
//  PlacingButtonNavBar.swift
//  week4.1
//
//  Created by MICHAIL SHAKHVOROSTOV on 21.11.2023.
//

import SwiftUI

struct PlacingButtonNavBar: View {
    var body: some View {
        NavigationStack {
            Text("hello")
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button("Tap me") {
                            //code more
                        }
                    }
                    
                    ToolbarItem(placement: .topBarLeading) {
                        Button("Tap me") {
                            //code more
                        }
                    }
                    
                    ToolbarItemGroup(placement: .confirmationAction) {
                        Button("Tap me") {
                            //code more
                        }
                        
                        Button("Tap me") {
                            //code more
                        }
                    }
                }
                .navigationBarBackButtonHidden()
        }
        
    }
}

#Preview {
    PlacingButtonNavBar()
}
