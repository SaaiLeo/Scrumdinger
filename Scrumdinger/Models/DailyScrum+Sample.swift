//
//  DailyScrum+Sample.swift
//  Scrumdinger
//
//  Created by Sei Mouk on 22/10/26.
//

import Foundation
import ThemeKit

extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(title: "Deisgn", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthInMinutes: 5, theme: .orange),
        DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthInMinutes: 5, theme: .poppy)
        
    ]
}
