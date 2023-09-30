//
//  PersonView.swift
//  ContactListView
//
//  Created by Елизавета Медведева on 28.09.2023.
//

import SwiftUI

struct PersonView: View {
    
    let person: Person
    
    var body: some View {
        ZStack {
            Color(UIColor(.gray))
                .ignoresSafeArea()
                .opacity(0.3)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
                .frame(width: 300, height: 300)
            
            VStack(alignment: .leading) {
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .opacity(0.4)
                    .padding(.bottom, 10)
                
                ListCellView(image: "phone", info: "\(person.number)")
                .padding(.bottom, 10)
                
                ListCellView(image: "folder", info: "\(person.email)")
            }
        }
        .navigationTitle("\(person.fullName)")
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: Person(id: 0, name: "Anna", surname: "Smit", number: "+1", email: "@mail.ru"))
    }
}
