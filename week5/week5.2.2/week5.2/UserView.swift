//
//  UserView.swift
//  week5.2
//
//  Created by MICHAIL SHAKHVOROSTOV on 30.11.2023.
//

import SwiftData
import SwiftUI

struct UserView: View {
    @Query let users: [User]
    
    var body: some View {
        List(users) {user in
            Text(user.name)
        }
    }
    
    init(minimumJoinDate: Date, sortOrder: [SortDescriptor<User>]) {
        _users = Query(filter: #Predicate<User> {user in
            user.joinData >= minimumJoinDate
        }, sort: sortOrder)
    }
}

//#Preview {
//    UserView()
//        .modelContainer(for: User.self)
//}
