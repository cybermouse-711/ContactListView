//
//  PersonView.swift
//  ContactListView
//
//  Created by Елизавета Медведева on 28.09.2023.
//

import SwiftUI

struct PersonView: View {
    
    let person: Person()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: Person(name: "", surname: "", number: "", email: ""))
    }
}
