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
    
    var body: some View {
        Text("Use Items")
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
                Text("Player Name: \(player.playerName)")
                Text("Player HP: \(player.playerHp)")
                Text("Player MP: \(player.mp)")
                Text("Player Money: \(player.money)\n")
                Text("Your items:\n")
                Text("[1].Potion = \(playerPotion.quantity)")
                Text("[2].Elixir = \(playerElixir.quantity)")
                Text("\nWhich item do you want to use?")
            }
            Spacer()
            VStack(alignment: .leading){
                Image("Bag")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 160, height: 155)
                    .cornerRadius(5)
            }
        }
        HStack{
            Button {
                if playerPotion.quantity > 0{
                    playerPotion.quantity -= 1
                    player.playerHp += 50
                    if player.playerHp > 100{
                        player.playerHp = 100
                    }
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
                    if player.mp > 50{
                        player.mp = 50
                    }
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
