//
//  SectionView.swift
//  ContactListSwiftUI
//
//  Created by Alex on 23.06.2023.
//

import SwiftUI

struct SectionView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                Section(person.fullName) {
                    Label(person.phone, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(persons: Person.getRandomPersons())
    }
}
