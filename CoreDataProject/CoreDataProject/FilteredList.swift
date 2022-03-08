//
//  FilteredList.swift
//  CoreDataProject
//
//  Created by Bitnoori Lee on 2022-03-05.
//

import SwiftUI

struct FilteredList: View {
    @State private var score = 0
    @FetchRequest var fetchRequest: FetchedResults<Singer>
    
    var body: some View {
        List(fetchRequest, id: \.self) { singer in
            Text("\(singer.wrappedFirstName) \(singer.wrappedLastName) ")
            
        }
    }
    
    init(filter: String){
        _fetchRequest = FetchRequest<Singer>(sortDescriptors:[], predicate: NSPredicate(format: "lastName BEGINSWITH %@", filter))
    }
}

