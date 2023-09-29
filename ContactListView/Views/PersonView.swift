//
//  PersonView.swift
//  ContactListView
//
//  Created by Елизавета Медведева on 28.09.2023.
//

import SwiftUI

struct PersonView: View {
    
    private let person: Person()
    
    var body: some View {
        ZStack {
            Color(CGColor(gray: 1.0, alpha: 0.5))
                .ignoresSafeArea()
            
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.white)
                .frame(width: 300, height: 300)
            
            VStack {
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                Text("\(person.number)")
                    .frame(alignment: .leading)
                
                Text("\(person.email)")
                    .frame(alignment: .leading)
            }
            
            Spacer()
        }
        .navigationTitle("\(person.fullName)")
        .padding()
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: Person(name: "", surname: "", number: "", email: ""))
    }
}
