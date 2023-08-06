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

    let teams = ["Mercedes", "Red Bull Racing", "Alfa Romeo", "McLaren", "Red Bull Racing", "AlphaTauri", "Ferrari", "Alpine", "Alpine", "Ferrari", "Aston Martin Racing", "Aston Martin Racing", "Williams", "AlphaTauri", "Mercedes", "Haas F1 Team", "Williams", "Haas F1 Team", "McLaren", "Alfa Romeo"]

    let emails = ["mercedes@example.com", "redbull@example.com", "alfaromeo@example.com", "mclaren@example.com", "redbull-2@example.com", "alphatauri-2@example.com", "ferrari@example.com", "alpine@example.com", "alpine-2@example.com", "ferrari-2@example.com", "astonmartin-2@example.com", "astonmartin@example.com", "williams-2@example.com", "alphatauri@example.com", "mercedes-2@example.com", "haas@example.com", "williams@example.com", "haas-2@example.com", "mclaren-2@example.com", "alfaromeo-2@example.com"]
    
    let icons = ["hamilton", "verstappen", "bottas", "norris", "perez", "ricciardo", "leclerc", "gasly", "ocon", "sainz", "stroll", "alonso", "sargeant", "tsunoda", "russell", "magnussen", "albon", "hulkenberg", "piastri", "guanyu"]

    private init() {}
}
