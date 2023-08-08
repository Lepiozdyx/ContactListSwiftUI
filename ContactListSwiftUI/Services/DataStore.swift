//
//  DataStore.swift
//  ContactList
//
//  Created by Alex on 18.04.2023.
//

final class DataStore {
    static let shared = DataStore()
    
    let names = ["Lewis", "Max", "Valtteri", "Lando", "Sergio", "Daniel", "Charles", "Pierre", "Esteban", "Carlos", "Lance", "Fernando", "Logan", "Yuki", "George", "Kevin", "Alex", "Nico", "Oskar", "Zhou"]

    let surnames = ["Hamilton", "Verstappen", "Bottas", "Norris", "Perez", "Ricciardo", "Leclerc", "Gasly", "Ocon", "Sainz", "Stroll", "Alonso", "Sargeant", "Tsunoda", "Russell", "Magnussen", "Albon", "Hulkenberg", "Piastri", "Guanyu"]

    let emails = ["mercedes@example.com", "redbull@example.com", "alfaromeo@example.com", "mclaren@example.com", "redbull-2@example.com", "alphatauri-2@example.com", "ferrari@example.com", "alpine@example.com", "alpine-2@example.com", "ferrari-2@example.com", "astonmartin-2@example.com", "astonmartin@example.com", "williams-2@example.com", "alphatauri@example.com", "mercedes-2@example.com", "haas@example.com", "williams@example.com", "haas-2@example.com", "mclaren-2@example.com", "alfaromeo-2@example.com"]
    
    let icons = ["hamilton", "verstappen", "bottas", "norris", "perez", "ricciardo", "leclerc", "gasly", "ocon", "sainz", "stroll", "alonso", "sargeant", "tsunoda", "russell", "magnussen", "albon", "hulkenberg", "piastri", "guanyu"]
    
    let numbers = ["44", "1", "77", "4", "11", "3", "16", "10", "31", "55", "18", "14", "2", "22", "63", "20", "23", "27", "81", "24"]
    
    let teams = ["Mercedes", "Red Bull Racing", "Alfa Romeo", "McLaren", "Red Bull Racing", "AlphaTauri", "Ferrari", "Alpine", "Alpine", "Ferrari", "Aston Martin Racing", "Aston Martin Racing", "Williams", "AlphaTauri", "Mercedes", "Haas F1 Team", "Williams", "Haas F1 Team", "McLaren", "Alfa Romeo"]
    
    let teamNames = ["Mercedes", "Red Bull Racing", "Alfa Romeo", "McLaren", "AlphaTauri", "Ferrari", "Alpine", "Aston Martin Racing", "Williams", "Haas F1 Team"]
    
    let teamLogos = ["mercedes", "redbull", "alfaromeo", "mclaren", "alphatauri", "ferrari", "alpine", "aston", "williams", "haas"]
    
    let teamHeads = ["Toto Wolff", "Christian Horner", "Frédéric Vasseur", "Zak Brown", "Franz Tost", "Mattia Binotto", "Laurent Rossi", "Otmar Szafnauer", "Jost Capito", "Guenther Steiner"]
    
    let teamFoundationYears = ["1954", "2005", "1950", "1966", "1985", "1929", "1976", "1959", "1977", "1983"]
    
    let teamCountries = ["Germany", "Austria", "Switzerland", "UK", "Italy", "Italy", "France", "UK", "UK", "USA"]
    
    let countryFlags = ["Germany", "Austria", "Switzerland", "UK", "Italy", "Italy", "France", "UK", "UK", "USA"]
    
    let bolidNames = ["W14", "RB19", "C43", "MCL60", "AT04", "SF-23", "A523", "AMR23", "FW45", "VF-23"]
    
    let bolidIcons = ["W14", "RB19", "C43", "MCL60", "AT04", "SF-23", "A523", "AMR23", "FW45", "VF-23"]

    private init() {}
}
