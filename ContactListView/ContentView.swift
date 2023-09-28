//
//  ContentView.swift
//  ContactListView
//
//  Created by Елизавета Медведева on 28.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    let persons = Person.getContactList()
    
    var body: some View {
        TabView {
            ListView(persons: persons)
                .tabItem{
                    Image(systemName: "person")
                    Text("Contacts")
                }
            DetailsInfoView(persons: persons)
                .tabItem{
                    Image(systemName: "call")
                    Text("Numbers")
                }
        }
    }
}
        
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(persons: [])
    }
}
