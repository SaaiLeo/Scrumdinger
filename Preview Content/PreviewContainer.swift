//
//  PreviewContainer.swift
//  Scrumdinger
//
//  Created by Sei Mouk on 24/10/26.
//

import SwiftData
import SwiftUI

struct DailyScrumSampleData: PreviewModifier {
    
    static func makeSharedContext() async throws -> ModelContainer {
        let container = try ModelContainer(for: DailyScrum.self, configurations: .init(isStoredInMemoryOnly: true))
        DailyScrum.sampleData.forEach{container.mainContext.insert($0)}
        return container
    }
    
    func body(content: Content, context: ModelContext) -> some View {
        content.modelContainer(context)
    }
}

extension PreviewTrait where T == Preview.ViewTraits {
    @MainActor static var dailyScrumSampleData: Self = .modifier(DailyScrumSampleData())
}
