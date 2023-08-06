//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Alex on 23.06.2023.
//

import SwiftUI

struct ContactListView: View {
    @ObservedObject var persons: ContactListViewModel
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(persons.filteredSectionTitles, id: \.self) { sectionTitle in
                    Section(sectionTitle) {
                        ForEach(persons.filteredPerson[sectionTitle] ?? []) { person in
                            NavigationLink(
                                destination: ContactDetailsView(person: person)
                            ) {
                                Text(person.fullName)
                            }
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Pilot List")
            .searchable(text: $persons.searchText, prompt: "Search..")
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: ContactListViewModel())
    }
}
