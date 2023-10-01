//
//  ListCellView.swift
//  ContactListView
//
//  Created by Елизавета Медведева on 01.10.2023.
//

import SwiftUI

struct ListCellView: View {
    
    let image: String
    let info: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.blue)
            Text(info)
        }
    }
}

struct ListCellView_Previews: PreviewProvider {
    static var previews: some View {
        ListCellView(image: "folder", info: "+1 111")
    }
}
