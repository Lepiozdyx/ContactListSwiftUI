//
//  Person.swift
//  ContactList
//
//  Created by Alex on 18.04.2023.
//

import Foundation

struct Person: Identifiable {
    let name: String
    let surname: String
    let team: String
    let email: String
    let icon: String
    let id = UUID()
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getRandomPersons() -> [Person] {
        var uniquePersons: [Person] = []
        
        let names = DataStore.shared.names
        let surnames = DataStore.shared.surnames
        let teams = DataStore.shared.teams
        let emails = DataStore.shared.emails
        let icons = DataStore.shared.icons
        
        for index in 0..<names.count {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                team: teams[index],
                email: emails[index],
                icon: icons[index]
            )
            
            uniquePersons.append(person)
        }
        
        return uniquePersons
    }
}
