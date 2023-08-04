//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Alex on 21.06.2023.
//

import SwiftUI

struct ContentView: View {
    private let persons = Person.getRandomPersons()
    
    var body: some View {
        TabView {
            ContactListView(persons: persons)
                .tabItem {
                    Label("Contacts", systemImage: "person.2")
                }
            SectionView(persons: persons)
                .tabItem {
                    Label("Numbers", systemImage: "phone")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
