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
                    Image(systemName: "person")
                    Text("Contacts")
                }
            SectionView()
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
