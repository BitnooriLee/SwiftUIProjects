//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Bitnoori Lee on 2022-03-02.
//

import SwiftUI

@main
struct BookwormApp: App {
    @StateObject private var dataController = DataController()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
