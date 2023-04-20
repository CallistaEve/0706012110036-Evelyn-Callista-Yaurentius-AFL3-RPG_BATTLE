//
//  BattleView.swift
//  0706012110036-Evelyn-Callista-Yaurentius-AFL3-RPG_BATTLE
//
//  Created by MacBook Pro on 20/04/23.
//

import SwiftUI

struct BattleView: View {
    var player : Player
    
    var body: some View {
        VStack(alignment: .leading){
            Image("Wizard")
                .renderingMode(.original)
                .resizable()
                .frame(width: 160, height: 155)
                .cornerRadius(5)
            VStack(alignment: .leading){
                Text("Player Status: ")
                    .bold()
                Text("Player HP: \(player.name)")
                Text("Player MP: ")
                Text("Player Money: ")
            }
        }
        Spacer()
        VStack(alignment: .leading){
            Image("Golem")
                .renderingMode(.original)
                .resizable()
                .frame(width: 160, height: 155)
                .cornerRadius(5)
            VStack(alignment: .leading){
                Text("Player Status: ")
                    .bold()
                Text("Player HP: ")
                Text("Player MP: ")
                Text("Player Money: ")
            }
        }
    }
    
    struct BattleView_Previews: PreviewProvider {
        static var previews: some View {
            BattleView(player: Player.init("twa"))
        }
    }
}
