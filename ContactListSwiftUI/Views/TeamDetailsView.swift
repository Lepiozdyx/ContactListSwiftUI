//
//  TeamDetailsView.swift
//  ContactListSwiftUI
//
//  Created by Alex on 08.08.2023.
//

import SwiftUI

struct TeamDetailsView: View {
    let team: Team
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(team.logo)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(20)
                    .frame(width: 200)
                Spacer()
            }
            Text("Head: \(team.head)")
            Text("Founded in: \(team.foundationYear)")
            HStack {
                Text("Country: \(team.country)")
                Image(team.flag)
                    .cornerRadius(5)
            }
            HStack {
                Text("Bolid: \(team.bolid)")
                Image(team.bolidIcon)
            }
        }
        .navigationTitle(team.name)
    }
}

struct TeamDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TeamDetailsView(team: Team.getTeam().first!)
    }
}
