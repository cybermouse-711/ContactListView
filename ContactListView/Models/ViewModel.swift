//
//  ViewModel.swift
//  ContactListView
//
//  Created by Елизавета Медведева on 28.09.2023.
//

import Foundation

struct Person: Identifiable {
    
    let id: Int
    let name: String
    let surname: String
    let number: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let numbers = DataManager.shared.numbers.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        let minimumValue = emails.count
        
        for index in (0...minimumValue) {
            let person = Person(
                id: index + 1,
                name: names[index],
                surname: surnames[index],
                number: numbers[index],
                email: emails[index]
            )
            persons.append(person)
        }
        
        return persons
    }
}
