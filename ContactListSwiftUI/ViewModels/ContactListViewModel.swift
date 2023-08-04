//
//  ContactListViewModel.swift
//  ContactListSwiftUI
//
//  Created by Alex on 04.08.2023.
//

import Foundation

final class ContactListViewModel: ObservableObject {
    @Published var allPersons: [Person] = []
    
    var sortedPersons: [String : [Person]] {
        let groupedPersons = Dictionary(grouping: allPersons) { String($0.surname.prefix(1)) }
        return groupedPersons.mapValues { $0.sorted { $0.surname < $1.surname } }
    }
    
    var sectionTitles: [String] {
        sortedPersons.keys.sorted()
    }
    
    init() {
        allPersons = Person.getRandomPersons()
    }
}
