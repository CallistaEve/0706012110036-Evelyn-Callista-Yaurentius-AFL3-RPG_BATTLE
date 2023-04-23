//
//  MainMenuView.swift
//  0706012110036-Evelyn-Callista-Yaurentius-AFL3-RPG_BATTLE
//
//  Created by MacBook Pro on 21/04/23.
//

import SwiftUI

class EnemiesViewModel: ObservableObject{
    @Published var enemies: [Enemy]
    init(){
        let enemies = EnemyDataService.enemies
        self.enemies = enemies
    }
}


struct MainMenuView: View {
    @State var playerName : Player
    @State var playerPotion : PlayerItem
    @State var playerElixir : PlayerItem
    @StateObject private var vm = EnemiesViewModel()
    @State var checkStatus : Bool = false
    var body: some View {
        VStack(alignment: .leading){
            Image("Wizard")
                .renderingMode(.original)
                .resizable()
                .frame(width: 160, height: 155)
                .cornerRadius(5)
            Text("From here, you can...")
            Button{} label: {
                NavigationLink(destination: CheckStatusView(player: $playerName, playerPotion: $playerPotion, playerElixir: $playerElixir)) {
                    Text("[C]heck Status and Items")
                        .padding(12)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(8)
                }
            }
            Button {
                print("Button pressed")

            } label: {
                NavigationLink(destination: UseItemView(player: $playerName, playerPotion: $playerPotion, playerElixir: $playerElixir)) {
                    Text("[H]eal or Restore Your Wounds with Items")
                        .padding(12)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(8)
                }
            }
            Button {
                print("Button pressed")
            } label: {
                NavigationLink(destination: MarketView(player: $playerName, playerPotion: $playerPotion, playerElixir: $playerElixir)) {
                    Text("[B]uy Items")
                        .padding(12)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(8)
                }
            }
            
            Text("\nOr choose where you want to go\n")
            Button {
                print("Button pressed")
                
            } label: {
                NavigationLink(destination: BattleView(player: $playerName, playerPotion: $playerPotion, playerElixir: $playerElixir, choosenEnemy: vm.enemies[0])) {
                    Text("Forest of Trolls")
                        .padding(12)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(8)
                }
            }
            Button {
                print("Button pressed")
            } label: {
                NavigationLink(destination: BattleView(player: $playerName, playerPotion: $playerPotion, playerElixir: $playerElixir,  choosenEnemy: vm.enemies[1])) {
                    Text("Mountain of Golem")
                        .padding(12)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(8)
                }
            }
            Button(action: {
               exit(0)
            }){
                Text("Quit Game")
                    .padding(12)
                    .background(Color.red)
                    .foregroundColor(Color.white)
                    .cornerRadius(8)
            }
        }
    }
}

//struct MainMenuView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainMenuView(playerName: Player.init(name: ""), playerItem: Binding<PlayerItem("", "", 0))
//    }
//}
