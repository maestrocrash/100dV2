//
//  UserView.swift
//  week5.2
//
//  Created by MICHAIL SHAKHVOROSTOV on 30.11.2023.
//

import SwiftData
import SwiftUI

struct UserView: View {
    @Environment(\.modelContext) var modelContext
    @Query let users: [User]
    
    var body: some View {
        List(users) {user in
            
            HStack {
                Text(user.name)
                
                Spacer()
                
                Text(String(user.jobs.count))
                    .fontWeight(.bold)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(.capsule)
            }
            
        }
        .onAppear(perform: addSample)
    }
    
    init(minimumJoinDate: Date, sortOrder: [SortDescriptor<User>]) {
        _users = Query(filter: #Predicate<User> {user in
            user.joinData >= minimumJoinDate
        }, sort: sortOrder)
    }
    
    func addSample() {
        let user1 = User(name: "Piper Chapman", city: "New York", joinData: .now)
        let job1 = Job(name: "Organize sock drawer", priority: 3)
        let job2 = Job(name: "Make plans with Alex", priority: 4)
        
        modelContext.insert(user1)
        
        user1.jobs.append(job1)
        user1.jobs.append(job2)
    }
}

//#Preview {
//    UserView()
//        .modelContainer(for: User.self)
//}
