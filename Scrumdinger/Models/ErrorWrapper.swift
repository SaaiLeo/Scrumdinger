//
//  ErrorWrapper.swift
//  Scrumdinger
//
//  Created by Sei Mouk on 26/10/26.
//

import SwiftUI

struct ErrorWrapper: Identifiable {
    let id: UUID
    let error: Error
    let guidance: String
    
    
    init(id: UUID = UUID(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}
