//
//  Person.swift
//  PersonsBoard
//
//  Created by Anton Nikolaev on 05.02.2022.
//

import SwiftUI

struct Person: Identifiable {
    
    let id: Int
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    let photo: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let photos = DataManager.shared.photos.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                id: index,
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phones[index],
                photo: photos[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
