//
//  MarketView.swift
//  0706012110036-Evelyn-Callista-Yaurentius-AFL3-RPG_BATTLE
//
//  Created by MacBook Pro on 21/04/23.
//

import SwiftUI

struct MarketView: View {
    @Binding var player : Player
    @Binding var playerPotion : PlayerItem
    @Binding var playerElixir : PlayerItem
    @Environment(\.presentationMode)private var presentationMode: Binding<PresentationMode>
    var body: some View {
        Text("Market")
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
                Text("\nYour items:\n")
                Text("[1].Potion = \(playerPotion.quantity)")
                Text("[2].Elixir = \(playerElixir.quantity)")
            }
            Spacer()
            VStack(alignment: .leading){
                Image("Market")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 160, height: 155)
                    .cornerRadius(5)
            }
        }
        VStack(alignment: .leading){
            Text("Welcome to the Market!\nWhich items do you want to buy?\n\n[P]otions 1x 5$\n[E]lixir 1x 5$\n[L]eave")
            Text("Player Money : \(player.money)")
            Text("Player Potions : \(playerPotion.quantity)")
            Text("Player Elixir : \(playerElixir.quantity)")
            Button {
                if player.money >= 5{
                    playerPotion.quantity += 1
                    player.money -= 5
                }
            } label: {
                if player.money > 0{
                    Text("Buy Potion")
                        .padding(12)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(8)
                }else if player.money <= 0{
                    Text("You don't have enough money to buy Potion")
                        .padding(12)
                        .background(Color.red)
                        .foregroundColor(Color.black)
                        .cornerRadius(8)
                        .disabled(true)
                }
            }
            Button {
                if player.money >= 5{
                    playerElixir.quantity += 1
                    player.money -= 5
                }
            } label: {
                if player.money >= 5{
                    Text("Buy Elixir")
                        .padding(12)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(8)
                }else if player.money <= 0{
                    Text("You don't have enough money to buy Elixir")
                        .padding(12)
                        .background(Color.red)
                        .foregroundColor(Color.black)
                        .cornerRadius(8)
                        .disabled(true)
                }
            }
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Leave")
                    .padding(12)
                    .background(Color.red)
                    .foregroundColor(Color.black)
                    .cornerRadius(8)
            })
        }
    }
}

//struct MarketView_Previews: PreviewProvider {
//    static var previews: some View {
//        MarketView()
//    }
//}
