//
//  NewScrumSheet.swift
//  Scrumdinger
//
//  Created by Sei Mouk on 24/10/26.
//

import SwiftUI

struct NewScrumSheet: View {
    
    var body: some View {
        NavigationStack {
            DetailEditView(scrum: nil)
        }
    }
}

#Preview {
    NewScrumSheet()
}
