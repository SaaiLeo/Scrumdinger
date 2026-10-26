//
//  MeetingTimerView.swift
//  Scrumdinger
//
//  Created by Sei Mouk on 26/10/26.
//

import SwiftUI
import ThemeKit
import TimerKit

struct MeetingTimerView: View {
    
    let speakers: [ScrumTimer.Speaker]
    let theme: Theme
    
    private var currentSpeaker: String {
        speakers.first(where: { !$0.isCompleted })?.name ?? "Someone"
    }
    
    var body: some View {
        Circle()
            .strokeBorder(lineWidth: 24)
            .overlay {
                VStack{
                    Text(currentSpeaker)
                        .font(.title)
                    Text("is speaking")
                }
            }
            .accessibilityElement(children: .combine)
            .foregroundColor(theme.accentColor)
    }
}

#Preview {
    let speakers = [ScrumTimer.Speaker(name: "Bill", isCompleted: true), ScrumTimer.Speaker(name: "Cathy", isCompleted: true)]
    MeetingTimerView(speakers: speakers, theme: .yellow)
}
