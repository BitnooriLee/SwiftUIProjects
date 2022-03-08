//
//  CoreDataProjectApp.swift
//  CoreDataProject
//
//  Created by Bitnoori Lee on 2022-03-04.
//

import SwiftUI

@main
struct CoreDataProjectApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
