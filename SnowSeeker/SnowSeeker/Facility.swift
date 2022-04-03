//
//  Facility.swift
//  SnowSeeker
//
//  Created by Bitnoori Lee on 2022-04-03.
//

import SwiftUI

struct Facility: Identifiable {
    let id = UUID()
    var name: String
    
    private let icons = [
    "Accomodation": "house",
    "Beginners": "1.circle",
    "Cross-country": "map",
    "Eco-friendly": "leaf.arrow.circlepath",
    "Family": "person.3"
    ]
    
    private let descriptions = [
        "Accomodation": "This resort has popular on-site accomodation.",
        "Beginners": "This resort has lots of ski schools",
        "Cross-country": "This resort has many cross-country ski routes",
        "Eco-friendly": "This resort has won an award for environmental friendliness",
        "Family": "This resort is popular with families"
    ]
    var icon: some View {
        if let iconName = icons[name] {
            return Image(systemName: iconName)
                .accessibilityLabel(name)
                .foregroundColor(.secondary)
            
        } else {
            fatalError("Unknown facility type: \(name)")
        }
    }
    
    var description: String {
        if let message = descriptions[name] {
            return message
            
        } else {
            fatalError("Unknown facility type: \(name)")
        }
    }
}
