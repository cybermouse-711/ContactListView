//
//  ContentView.swift
//  ContactListView
//
//  Created by Елизавета Медведева on 28.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    private let persons: [Person]
    
    var body: some View {
        List(persons) {person in
            NavigationLink(destination: PersonView(person: person))
            
        }
        .listStyle(.plain)
        .navigationTitle("Contact List")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(persons: [])
    }
}
