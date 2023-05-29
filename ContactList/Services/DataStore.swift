//
//  DataStore.swift
//  ContactList
//
//  Created by Матвей Авдеев on 26.05.2023.
//

class DataStore {
   
    static let shared = DataStore()
    
    let names = [
        "Noah", "Liam", "William",
        "Mason", "James", "Benjamin",
        "Jacob", "Michael", "Ethan"
    ]

    let surnames = [
        "Smith", "Johnson", "Williams",
        "Jones", "Brown", "Davis",
        "Miller", "Wilson", "Garcia"
    ]
    
    let phoneNumber = [
        "+7 (111) 111- 11-11", "+7 (222) 111- 11-11",
        "+7 (333) 111- 11-11", "+7 (444) 111- 11-11",
        "+7 (555) 111- 11-11", "+7 (666) 111- 11-11",
        "+7 (777) 111- 11-11", "+7 (888) 111- 11-11",
        "+7 (999) 111- 11-11"
    ]
    
    let email = [
        "qqqq@mail.ru", "wwww@mail.ru", "eeee@mail.ru",
        "gggg@mail.ru", "rrrr@mail.ru", "tttt@mail.ru",
        "yyyy@mail.ru", "uuuu@mail.ru", "iiii@mail.ru"
    ]
    
    private init() {
        
    }
}
