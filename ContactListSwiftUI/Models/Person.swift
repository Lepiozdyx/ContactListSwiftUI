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
    let email: String
    let icon: String
    let number: String
    let team: String
    let id = UUID()
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getRandomPersons() -> [Person] {
        var uniquePersons: [Person] = []
        
        let names = DataStore.shared.names
        let surnames = DataStore.shared.surnames
        let emails = DataStore.shared.emails
        let icons = DataStore.shared.icons
        let numbers = DataStore.shared.numbers
        let teams = DataStore.shared.teams
        
        for index in 0..<names.count {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                icon: icons[index],
                number: numbers[index],
                team: teams[index]
            )
            
            uniquePersons.append(person)
        }
        
        return uniquePersons
    }
}

struct Team: Identifiable {
    let name: String
    let logo: String
    let head: String
    let foundationYear: String
    let country: String
    let flag: String
    let bolid: String
    let bolidIcon: String
    let id = UUID()
    
    static func getTeam() -> [Team] {
        var uniqueTeam: [Team] = []
        
        let names = DataStore.shared.teamNames
        let logos = DataStore.shared.teamLogos
        let heads = DataStore.shared.teamHeads
        let foundationYears = DataStore.shared.teamFoundationYears
        let countries = DataStore.shared.teamCountries
        let flags = DataStore.shared.countryFlags
        let bolides = DataStore.shared.bolidNames
        let bolidIcons = DataStore.shared.bolidIcons
        
        for index in 0..<names.count {
            let team = Team(
                name: names[index],
                logo: logos[index],
                head: heads[index],
                foundationYear: foundationYears[index],
                country: countries[index],
                flag: flags[index],
                bolid: bolides[index],
                bolidIcon: bolidIcons[index]
            )
            uniqueTeam.append(team)
        }
        
        return uniqueTeam
    }
}
