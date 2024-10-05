//
//  Person.swift
//  contactApp
//
//  Created by Sasha on 5.10.24.
//

import Foundation


struct Person {
    
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        
        var persons: [Person] = []
        let dataSotre = DataStore.shared
        
        let names = dataSotre.names.shuffled()
        let surnames = dataSotre.surnames.shuffled()
        let phones = dataSotre.phones.shuffled()
        let emails = dataSotre.emails.shuffled()
        
        let counts = min(
            names.count,
            surnames.count,
            phones.count,
            emails.count
        )
        
        for index in 0..<counts {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phone: phones[index],
                email: emails[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
