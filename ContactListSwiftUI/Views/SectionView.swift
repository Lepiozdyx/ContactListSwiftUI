//
//  SectionView.swift
//  ContactListSwiftUI
//
//  Created by Alex on 23.06.2023.
//

import SwiftUI

struct SectionView: View {
    @ObservedObject var persons: ContactListViewModel
    
    var body: some View {
        NavigationStack {
            List(persons.allPersons) { person in
                Section(person.fullName) {
                    Label(person.team, systemImage: "flag.checkered.2.crossed")
                    Label(person.email, systemImage: "envelope")
                }
            }
            .listStyle(.plain)
            .navigationTitle("General")
        }
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(persons: ContactListViewModel())
    }
}
