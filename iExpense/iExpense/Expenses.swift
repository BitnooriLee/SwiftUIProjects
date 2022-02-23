//
//  Expenses.swift
//  iExpense
//
//  Created by Bitnoori Lee on 2022-02-23.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem](){
        didSet{
            let encoder = JSONEncoder()
            
            if let encoded = try? encoder.encode(items) {
                
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }
    init(){
        if let saveItems = UserDefaults.standard.data(forKey: "Items"){
            if let decodedItems = try? JSONDecoder().decode([ExpenseItem].self, from: saveItems) {
                items = decodedItems
                return
            }
        }
        
        items = []
    }
    
}
