//
//  ContactListViewModel.swift
//  ContactListSwiftUI
//
//  Created by Alex on 04.08.2023.
//

import Foundation

final class ContactListViewModel: ObservableObject {
    @Published var allPersons: [Person] = []
    @Published var searchText = ""
    
    var sortedPersons: [String : [Person]] {
        let groupedPersons = Dictionary(grouping: allPersons) { String($0.surname.prefix(1)) }
        return groupedPersons.mapValues { $0.sorted { $0.surname < $1.surname } }
    }
    
    var filteredPerson: [String : [Person]] {
        guard !searchText.isEmpty else { return sortedPersons }
        
        var result: [String : [Person]] = [:]
        for (key, value) in sortedPersons {
            result[key] = value.filter { $0.fullName.lowercased().contains(searchText.lowercased()) }
        }
        return result
    }
    
    var filteredSectionTitles: [String] {
        filteredPerson.compactMap { (key, value) in
            value.isEmpty ? nil : key
        }.sorted()
    }
    
    init() {
        allPersons = Person.getRandomPersons()
    }
}
