//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Sei Mouk on 22/10/26.
//

import SwiftUI
import ThemeKit
import SwiftData

struct ScrumsView: View {
    
    @Query(sort: \DailyScrum.title) private var scrums: [DailyScrum]
    @State private var isPresendingNewScrumView = false
    
    var body: some View {
        NavigationStack {
            List(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
                        
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {
                    isPresendingNewScrumView = true
                }) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
        .sheet(isPresented: $isPresendingNewScrumView) {
            NewScrumSheet()
        }
    }
}

#Preview(traits: .dailyScrumSampleData) {
    ScrumsView()
}
