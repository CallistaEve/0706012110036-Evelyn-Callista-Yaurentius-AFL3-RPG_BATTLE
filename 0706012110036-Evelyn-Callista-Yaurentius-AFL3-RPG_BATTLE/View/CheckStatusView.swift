//
//  CheckStatusView.swift
//  0706012110036-Evelyn-Callista-Yaurentius-AFL3-RPG_BATTLE
//
//  Created by MacBook Pro on 21/04/23.
//

import SwiftUI

struct CheckStatusView: View {
    @Binding var player : Player
    var body: some View {
        VStack(alignment: .leading){
            Text("Player Status: ")
                .bold()
            Text("Player Name: \(player.playerName)")
            Text("Player HP: 100 / \(player.playerHp)")
            Text("Player MP: 50 / \(player.mp)")
            Text("Player Money: \(player.money)$")
        }
    }
}

//struct CheckStatusView_Previews: PreviewProvider {
//    static var previews: some View {
////        CheckStatusView(player: Player(name: ""))
//    }
//}
