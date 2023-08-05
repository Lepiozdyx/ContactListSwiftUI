//
//  DataStore.swift
//  ContactList
//
//  Created by Alex on 18.04.2023.
//

final class DataStore {
    static let shared = DataStore()
    
    let names = ["Lewis", "Max", "Valtteri", "Lando", "Sergio", "Daniel", "Charles", "Pierre", "Esteban", "Carlos", "Lance", "Fernando", "Logan", "Yuki", "George", "Kevin", "Nico", "Alex", "Oskar", "Zhou"]

    let surnames = ["Hamilton", "Verstappen", "Bottas", "Norris", "Perez", "Ricciardo", "Leclerc", "Gasly", "Ocon", "Sainz", "Stroll", "Alonso", "Sargeant", "Tsunoda", "Russell", "Magnussen", "Albon", "Hulkenberg", "Piastri", "Guanyu"]

    let phones = ["1234567890", "2345678901", "3456789012", "4567890123", "5678901234", "6789012345", "7890123456", "8901234567", "9012345678", "0123456789", "0987654321", "9876543210", "8765432109", "7654321098", "6543210987", "5432109876", "4321098765", "3210987654", "2109876543", "1098765432"]

    let emails = ["mercedes@example.com", "mercedes-2@example.com", "redbull@example.com", "redbull-2@example.com", "mclaren@example.com", "mclaren-2@example.com", "ferrari@example.com", "ferrari-2@example.com", "alpine@example.com", "alpine-2@example.com", "astonmartin@example.com", "astonmartin-2@example.com", "alfaromeo@example.com", "alfaromeo-2@example.com", "alphatauri@example.com", "alphatauri-2@example.com", "williams@example.com", "williams-2@example.com", "haas@example.com", "haas-2@example.com"]
    
    let icons = ["hamilton", "verstappen", "bottas", "norris", "perez", "ricciardo", "leclerc", "gasly", "ocon", "sainz", "stroll", "alonso", "sargeant", "tsunoda", "russell", "magnussen", "albon", "hulkenberg", "piastri", "guanyu"]

    private init() {}
}
