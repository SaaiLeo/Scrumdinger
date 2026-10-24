//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Sei Mouk on 22/10/26.
//

import SwiftUI
import ThemeKit

struct ScrumsView: View {
    
    @Binding var scrums: [DailyScrum]
    @State private var isPresendingNewScrumView = false
    
    var body: some View {
        NavigationStack {
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
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
        }
    }
}

#Preview {
    @Previewable @State var scrums = DailyScrum.sampleData
    ScrumsView(scrums: $scrums)
}
