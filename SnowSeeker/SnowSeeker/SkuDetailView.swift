//
//  SkuDetailView.swift
//  SnowSeeker
//
//  Created by Bitnoori Lee on 2022-04-02.
//

import SwiftUI

struct SkuDetailView: View {
    let resort: Resort
    
    var body: some View {
        Group {
            VStack {
                Text("Elevation")
                    .font(.caption.bold())
                
                Text("\(resort.elevation)m")
                    .font(.title3)
            }
            VStack {
                Text("Snow")
                    .font(.caption.bold())
                Text("\(resort.snowDepth)cm")
                    .font(.title3)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct SkuDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SkuDetailView(resort: Resort.example)
    }
}
