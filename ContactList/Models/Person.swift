
//  File.swift
//  ContactList
//
//  Created by Матвей Авдеев on 26.05.2023.


struct Person {

    let names = DataStore.shared.names.shuffled()
    let surnames = DataStore.shared.surnames.shuffled()
    let phoneNumber = DataStore.shared.phoneNumber.shuffled()
    let email = DataStore.shared.email.shuffled()

    static func getPerson() -> Person {
        Person()
    }
}
