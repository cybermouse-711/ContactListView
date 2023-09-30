//
//  ListView.swift
//  ContactListView
//
//  Created by Елизавета Медведева on 29.09.2023.
//

import SwiftUI

struct ListView: View {
    
    let persons: [Person]
    
    var body: some View {
        List(persons) { person in //дописать функцию
            NavigationLink(destination: PersonView(person: person))
            
        }
        .listStyle(.plain)
        .navigationTitle("Contact List")
    }
}

struct ListWView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(persons: Person.getContactList())
    }
}
