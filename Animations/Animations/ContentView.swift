//
//  ContentView.swift
//  Animations
//
//  Created by Bitnoori Lee on 2022-02-20.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    @State private var animationAmount2 = 0.0
    var body: some View {
        VStack{
        Button ("Tap me") {
            withAnimation(.interpolatingSpring(stiffness: 50, damping: 1)) {
                animationAmount2 += 360
            }
           
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount2), axis: (x: 0, y: 1, z: 0))
        
        Button("Tap me"){
         //   animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
        Circle()
            .stroke(.red)
            .scaleEffect(animationAmount)
            .opacity(2 - animationAmount)
            .animation(
                .easeInOut(duration: 1)
                    .repeatForever( autoreverses: false),
                value: animationAmount
            )
        )
        .onAppear{
            animationAmount = 2
        }
       
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
