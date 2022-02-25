//
//  ContentView.swift
//  Moonshot
//
//  Created by Bitnoori Lee on 2022-02-23.
//

import SwiftUI


struct ContentView: View {
    let layout = [
        GridItem(.adaptive(minimum: 80)),
       ]
    
    
    var body: some View {
        ScrollView(.horizontal){
            LazyHGrid(rows: layout){
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
   }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
