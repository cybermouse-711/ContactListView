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
        NavigationStack {
            List(persons) { person in
                NavigationLink(destination: PersonView(person: person)) {
                    Text(person.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ListWView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(persons: Person.getContactList())
    }
}
