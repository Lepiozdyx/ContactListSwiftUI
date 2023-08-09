//
//  TeamListView.swift
//  ContactListSwiftUI
//
//  Created by Alex on 08.08.2023.
//

import SwiftUI

struct TeamListView: View {
    private let teams = Team.getTeam()
    private let columns = [GridItem()]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(teams) { team in
                        NavigationLink(destination: TeamDetailsView(team: team)) {
                            VStack {
                                Image(team.logo)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 250)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(.gray, lineWidth: 1)
                                }
                                Text(team.name)
                                    .font(.title)
                                    .padding(.bottom, 20)
                            }
                        }
                    }
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
