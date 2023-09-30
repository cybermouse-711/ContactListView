//
//  DetailsInfoView.swift
//  ContactListView
//
//  Created by Елизавета Медведева on 28.09.2023.
//

import SwiftUI

struct DetailsInfoView: View {
    
    let persons: [Person] 
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                Section(header: Text("\(person.fullName)")) {
                    
                    ListCellView(image: "phone", info: "\(person.number)")
                    
                    ListCellView(image: "folder", info: "\(person.email)")
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct DetailsInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsInfoView(persons: Person.getContactList())
    }
}
