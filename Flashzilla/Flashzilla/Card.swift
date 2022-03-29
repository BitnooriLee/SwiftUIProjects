//
//  Card.swift
//  Flashzilla
//
//  Created by Bitnoori Lee on 2022-03-27.
//

import Foundation

struct Card: Codable {
    let prompt: String
    let answer: String
    
    static let example = Card(prompt: "Who played the 13th Doctor in Doctor Who?", answer: "Jodie Whittaker")
}
