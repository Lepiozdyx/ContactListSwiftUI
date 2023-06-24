//
//  ContactDetailsView.swift
//  ContactListSwiftUI
//
//  Created by Alex on 23.06.2023.
//

import SwiftUI

struct ContactDetailsView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 150, height: 150)
                Spacer()
            }
            Label(person.phone, systemImage: "phone")
            Label(person.email, systemImage: "tray")
        }
        .navigationTitle(person.fullName)
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(person: Person.getRandomPersons().first!)
    }
}
