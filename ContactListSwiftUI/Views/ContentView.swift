//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Alex on 21.06.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var persons = ContactListViewModel()
    
    var body: some View {
        TabView {
            ContactListView(persons: persons)
                .tabItem {
                    Label("Pilots", systemImage: "person.3.sequence.fill")
                }
            SectionView(persons: persons)
                .tabItem {
                    Label("General", systemImage: "person.crop.rectangle.stack.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
