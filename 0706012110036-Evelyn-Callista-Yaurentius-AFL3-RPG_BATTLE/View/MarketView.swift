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
        
        ScrollView{
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
                    Text("[2].Elixir = \(playerElixir.quantity)\n")
                    Text("Welcome to the Market!\nWhich items do you want to buy?\n\n[P]otions 1x 5$\n[E]lixir 1x 5$\n[L]eave")
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
            Button {
                if player.money >= 5{
                    player.money = playerPotion.buy(money: player.money, itemName: "potion")
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
            VStack(alignment: .leading){
                Button {
                    if player.money >= 5{
                        player.money = playerElixir.buy(money: player.money, itemName: "elixir")
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
                
                
                //            Text("Player Money : \(player.money)")
                //            Text("Player Potions : \(playerPotion.quantity)")
                //            Text("Player Elixir : \(playerElixir.quantity)")
                
            }
        }
    }
}

//struct MarketView_Previews: PreviewProvider {
//    static var previews: some View {
//        MarketView()
//    }
//}
