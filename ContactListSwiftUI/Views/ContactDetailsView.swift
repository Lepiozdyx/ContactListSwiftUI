//
//  ContactDetailsView.swift
//  ContactListSwiftUI
//
//  Created by Alex on 23.06.2023.
//

import SwiftUI

struct ContactDetailsView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 150, height: 150)
                Spacer()
            }
            RowView(image: "phone", text: person.phone)
            RowView(image: "tray", text: person.email)
        }
        .navigationTitle(person.fullName)
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(person: Person(name: "", surname: "", phone: "3333-333", email: "luis@gmail.com "))
    }
}

// MARK: - RowView
struct RowView: View {
    let image: String
    let text: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .frame(width: 30, alignment: .leading)
                .foregroundColor(.blue)
            Text(text)
        }
    }
}
