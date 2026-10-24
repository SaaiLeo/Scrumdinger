//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Sei Mouk on 22/10/26.
//

import SwiftUI
import SwiftData

@main
struct ScrumdingerApp: App {
    
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView()
        }
        .modelContainer(for: DailyScrum.self)
    }
}
