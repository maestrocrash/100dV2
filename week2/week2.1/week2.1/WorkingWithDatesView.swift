//
//  WorkingWithDatesView.swift
//  week2.1
//
//  Created by MICHAIL SHAKHVOROSTOV on 01.11.2023.
//

import SwiftUI

struct WorkingWithDatesView: View {
    var body: some View {
        Text(Date.now, format: .dateTime.hour().minute().month().year())
        Text(Date.now.formatted(date: .abbreviated, time: .shortened))
    }
    
    func exampleDates() {
//        let now = Date.now
//        let tomorrow = Date.now.addingTimeInterval(86400)
//        let range = now...tomorrow
//        
//        
//        var components = DateComponents()
//        components.hour = 8
//        components.minute = 0
//        
//        let date = Calendar.current.date(from: components) ?? .now
        
        let components = Calendar.current.dateComponents([.hour, .minute], from: .now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
        
    }
}

#Preview {
    WorkingWithDatesView()
}
