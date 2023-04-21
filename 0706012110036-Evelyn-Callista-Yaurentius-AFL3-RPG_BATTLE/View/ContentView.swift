//
//  ContentView.swift
//  0706012110036-Evelyn-Callista-Yaurentius-AFL3-RPG_BATTLE
//
//  Created by MacBook Pro on 20/04/23.
//

import SwiftUI

struct SampleStyle: ButtonStyle {
    let imageName: String
    let title: String
    func makeBody(configuration: Self.Configuration) -> some View {
        HStack {
            Image(systemName: "plus.circle")
            Text("Add new item")
        }
        .padding(12)
        .background(!configuration.isPressed ?
                    Color(UIColor.systemIndigo) :
                        Color(UIColor.systemYellow))
        .foregroundColor(!configuration.isPressed ? .white : .black)
        .cornerRadius(8)
    }
}

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
                Button {
                    print("Button pressed")
                } label: {
                    NavigationLink(destination: MainView()) {
                        Text("Start the Game")
                            .padding(12)
                            .background(Color.green)
                            .foregroundColor(Color.white)
                            .cornerRadius(8)
                    }
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
