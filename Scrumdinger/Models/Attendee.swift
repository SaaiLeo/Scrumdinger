//
//  Attendee.swift
//  Scrumdinger
//
//  Created by Sei Mouk on 24/10/26.
//

import Foundation
import SwiftData

@Model
class Attendee: Identifiable {
    var id: UUID
    var name: String
    var dailyScrum: DailyScrum?
    
    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name
    }
}
    
