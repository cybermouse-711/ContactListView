//
//  ViewModel.swift
//  ContactListView
//
//  Created by Елизавета Медведева on 28.09.2023.
//

import Foundation

struct User {
    
    let name: String
    let surname: String
    let number: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
