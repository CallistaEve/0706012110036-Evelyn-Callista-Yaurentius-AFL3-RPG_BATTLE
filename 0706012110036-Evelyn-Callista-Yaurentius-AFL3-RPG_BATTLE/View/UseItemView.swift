//
//  UseItemView.swift
//  0706012110036-Evelyn-Callista-Yaurentius-AFL3-RPG_BATTLE
//
//  Created by MacBook Pro on 22/04/23.
//

import SwiftUI

struct UseItemView: View {
    @Binding var player : Player
    @Binding var playerPotion : PlayerItem
    @Binding var playerElixir : PlayerItem
    //    @StateObject var playerItemsvm = PlayerItemViewModel()
    var body: some View {
        VStack(alignment: .leading){
            Text("Player HP \(player.playerHp)")
            Text("Player MP \(player.mp)")
            Text("Player Potions \(playerPotion.quantity)")
            Text("Player Elixir \(playerElixir.quantity)")
            Button {
                if playerPotion.quantity > 0{
                    playerPotion.quantity -= 1
                    player.playerHp += 50
                }
            } label: {
                if playerPotion.quantity > 0{
                    Text("Use Potion")
                        .padding(12)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(8)
                }else if playerPotion.quantity <= 0{
                    Text("You don't have enough Potion")
                        .padding(12)
                        .background(Color.red)
                        .foregroundColor(Color.black)
                        .cornerRadius(8)
                        .disabled(true)
                }
            }
            Button {
                if playerElixir.quantity > 0{
                    playerElixir.quantity -= 1
                    player.mp += 20
                }
            } label: {
                if playerElixir.quantity > 0{
                    Text("Use Elixir")
                        .padding(12)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(8)
                }else if playerElixir.quantity <= 0{
                    Text("You don't have enough Elixir")
                        .padding(12)
                        .background(Color.red)
                        .foregroundColor(Color.black)
                        .cornerRadius(8)
                        .disabled(true)
                }
            }
        }
    }
}

//struct UseItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        UseItemView(player: player, playerItem: playerItem)
//    }
//}
