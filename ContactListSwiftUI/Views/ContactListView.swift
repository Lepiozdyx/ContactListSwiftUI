//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Alex on 23.06.2023.
//

import SwiftUI

struct ContactListView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                NavigationLink(destination: ContactDetailsView(person: person)) {
                    Text(person.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getRandomPersons())
    }
}
