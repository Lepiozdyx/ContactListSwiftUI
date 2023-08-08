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
