//
//  TeamListView.swift
//  ContactListSwiftUI
//
//  Created by Alex on 08.08.2023.
//

import SwiftUI

struct TeamListView: View {
    private let teams = Team.getTeam()
    
    var body: some View {
        NavigationStack {
            List(teams) { team in
                NavigationLink(destination: TeamDetailsView(team: team)) {
                    Image(team.logo)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 38)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray, lineWidth: 1)
                        }
                    Text(team.name)
                }
            }
            .listStyle(.plain)
            .navigationTitle("F1 Teams")
        }
    }
}

struct TeamListView_Previews: PreviewProvider {
    static var previews: some View {
        TeamListView()
    }
}
