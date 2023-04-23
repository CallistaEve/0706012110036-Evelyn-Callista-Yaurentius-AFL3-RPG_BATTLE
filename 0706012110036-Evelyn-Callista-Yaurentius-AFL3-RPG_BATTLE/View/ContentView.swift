//
//  ContentView.swift
//  0706012110036-Evelyn-Callista-Yaurentius-AFL3-RPG_BATTLE
//
//  Created by MacBook Pro on 20/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                Image("RPG")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 300, height: 300)
                    .cornerRadius(5)
                Button {
                    print("Button pressed")
                } label: {
                    NavigationLink(destination: MainView()) {
                        Text("Start the Game")
                            .padding(12)
                            .background(Color.black)
                            .foregroundColor(Color.white)
                            .cornerRadius(8)
                    }
                }
            }
        }
        .padding()
        .foregroundColor(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
