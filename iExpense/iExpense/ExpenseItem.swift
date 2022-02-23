//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Bitnoori Lee on 2022-02-23.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    let id = UUID() // unique value
    let name: String
    let type: String
    let amount: Double

}
