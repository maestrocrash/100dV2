//
//  DatePickerView.swift
//  week2.1
//
//  Created by MICHAIL SHAKHVOROSTOV on 01.11.2023.
//

import SwiftUI

struct DatePickerView: View {
    @State private var dateWakeup = Date.now
    
    var body: some View {
        DatePicker("Please date a wakeUp", selection: $dateWakeup, in: Date.now...)
            .labelsHidden()
            
    }
    
    func exampleDate() {
        
        let tommorow = Date.now.addingTimeInterval(86400)
        let rangeDate = Date.now...tommorow
    }
}

#Preview {
    DatePickerView()
}
