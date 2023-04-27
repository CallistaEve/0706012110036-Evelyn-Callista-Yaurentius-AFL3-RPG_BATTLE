//
//  CheckStatusView.swift
//  0706012110036-Evelyn-Callista-Yaurentius-AFL3-RPG_BATTLE
//
//  Created by MacBook Pro on 21/04/23.
//

import SwiftUI

struct CheckStatusView: View {
    @Binding var player : Player
    @Binding var playerPotion : PlayerItem
    @Binding var playerElixir : PlayerItem
    var body: some View {
        VStack{
            Text("Check Status")
                .bold()

            HStack(alignment: .top){
                VStack(alignment: .leading){
                    Image("Wizard")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 160, height: 155)
                        .cornerRadius(5)
                    Text("Player Status: ")
                        .bold()
                    Text("Player Name: \(player.playerName)\n")
                    Text("Player HP: 100 / \(player.playerHp)")
                    Text("Player MP: 50 / \(player.mp)")
                    Text("Player Money: \(player.money)$\n")
                    Text("Actions:\n")
                    Text("[1]Physical Attack. No mana required. Deal 5pt of damage.\n[2]Meteor. Use 15pt of MP. Deal 50pt of damage.\n[3]Shield. Use 10pt of MP. Block enemy's attack in 1 turn.")
                    Text("Your items:\n")
                    Text("[1].Potion = \(playerPotion.quantity)x \(playerPotion.description)\n[2].Potion = \(playerElixir.quantity)x \(playerElixir.description)")
                }
            }
        }
        .foregroundColor(Color.white)
        .background(
            Image("ForestBG")
                .resizable()
                .frame(width: 1000, height: 1000))
    }
}

//struct CheckStatusView_Previews: PreviewProvider {
//    static var previews: some View {
////        CheckStatusView(player: Player(name: ""))
//    }
//}
