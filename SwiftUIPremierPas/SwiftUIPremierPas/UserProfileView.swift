//
//  UserProfileView.swift
//  SwiftUIPremierPas
//
//  Created by Al on 06/12/2020.
//

import SwiftUI


struct UserProfileView: View {
    @ObservedObject var user: User
    //declare this view as a subscriber for user
    
    var body: some View {
        HStack {
            Text(self.user.name)
            Spacer()
            Text(String(self.user.age))
        }.padding().frame(width: 200, height: 30, alignment: .center)
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView(user: User(name: "John Doe", age: 24))
    }
}
