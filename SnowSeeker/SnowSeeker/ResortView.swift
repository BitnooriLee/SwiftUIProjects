//
//  ResortView.swift
//  SnowSeeker
//
//  Created by Bitnoori Lee on 2022-04-02.
//

import SwiftUI

struct ResortView: View {
    let resort: Resort
    
    @Environment(\.horizontalSizeClass) var sizeClass
    @Environment(\.dynamicTypeSize) var typeSize
    
    @EnvironmentObject var favorites: Favorites
    
    @State private var seletedFacility: Facility?
    @State private var showingFacility = false
    
    var body: some View {
        ScrollView {
        VStack(alignment: .leading, spacing: 0){
            Image(decorative: resort.id)
                .resizable()
                .scaledToFit()
            
            HStack{
                if sizeClass == .compact && typeSize > .large {
                    VStack(spacing: 10){
                        ResortDetailsView(resort: resort) }
                    VStack(spacing: 10){ SkuDetailView(resort: resort)}
                } else {
                    ResortDetailsView(resort: resort)
                    SkuDetailView(resort: resort)
                }
               
            }
            .padding(.vertical)
            .background(Color.primary.opacity(0.1))
            .dynamicTypeSize(...DynamicTypeSize.xxxLarge)
            
            Group {
                Text(resort.description)
                    .padding(.vertical)
                
                Text("Facilities")
                    .font(.headline)
               
                HStack {
                    ForEach(resort.facilityTypes){
                        facility in
                        Button {
                            seletedFacility = facility
                            showingFacility = true
                        } label: {
                            facility.icon
                                .font(.title)
                        }
                       
                    }
                }
                Button(favorites.contains(resort) ? "Remove from Favorites" : "Add to Favorites") {
                
                if favorites.contains(resort) {
                    favorites.remove(resort)
                } else {
                    favorites.add(resort)
                }
            }
            .buttonStyle(.borderedProminent)
            .padding()
            }
            .padding(.horizontal)
        }
            
        }
        .navigationTitle("\(resort.name), \(resort.country)")
        .navigationBarTitleDisplayMode(.inline)
        .alert(seletedFacility?.name ?? "More information", isPresented: $showingFacility, presenting: seletedFacility) { _ in
        } message: { facility in
            Text(facility.description)
        }
    }
}

struct ResortView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ResortView(resort: Resort.example)
        }
        .environmentObject(Favorites())
        
    }
}
