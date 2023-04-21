//
//  MainMenuView.swift
//  0706012110036-Evelyn-Callista-Yaurentius-AFL3-RPG_BATTLE
//
//  Created by MacBook Pro on 21/04/23.
//

import SwiftUI

struct MainMenuView: View {
    //    public var player
    //    var playerMoney = player.money
    @State var playerName : Player
    var golem = Enemy(name : "Golem", hp : 150, damage : 10, prize : 50, encounterText: "As you make your way through the rugged mountain terrain, you can feel the chill of the wind biting at your skin. \nSuddenly, you hear a sound that makes you freeze in your tracks. That's when you see it - a massive, snarling Golem emerging from the shadows.")
    var troll = Enemy(name : "Troll", hp : 100, damage : 5, prize :20, encounterText :"As you enter the forest, you feel a sense of unease wash over you. \nSuddenly, you hear the sound of twigs snapping behind you. You quickly spin around, and find a Troll emerging from the shadows.")
    @State var checkStatus : Bool = false
    //    //    var enemy : Enemy
    //    @State private var golem = Enemy(name : "Golem", hp : 10, damage : 10, prize : 50, encounterText: "As you make your way through the rugged mountain terrain, you can feel the chill of the wind biting at your skin. \nSuddenly, you hear a sound that makes you freeze in your tracks. That's when you see it - a massive, snarling Golem emerging from the shadows.")
    var body: some View {
        VStack(alignment: .leading){
            Text("Hello, \(playerName.playerName)!")
            Text("Current HP, \(playerName.playerHp)!")
            if checkStatus == true{
                CheckStatusView(player: playerName)
            }
            Button(action: {
                checkStatus = true
            }){
                Text("Check Status and Items")
                    .padding(12)
                    .background(Color.green)
                    .foregroundColor(Color.white)
                    .cornerRadius(8)
            }
//            Button {
//                print("Button pressed")
//
//            } label: {
//                NavigationLink(destination: BattleView(player: player)) {
//                    Text("Heal or Restore Your Wounds with Items")
//                        .padding(12)
//                        .background(Color.green)
//                        .foregroundColor(Color.white)
//                        .cornerRadius(8)
//                }
//            }
//            Button {
//                print("Button pressed")
//            } label: {
//                NavigationLink(destination: BattleView(player: player, choosenEnemy: "Golem")) {
//                    Text("Buy Items")
//                        .padding(12)
//                        .background(Color.green)
//                        .foregroundColor(Color.white)
//                        .cornerRadius(8)
//                }
//            }
            
            Text("\nOr choose where you want to go\n")
            Button {
                print("Button pressed")
                
            } label: {
                NavigationLink(destination: BattleView(player: playerName, choosenEnemy: troll)) {
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
                NavigationLink(destination: BattleView(player: playerName,  choosenEnemy: golem)) {
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

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView(playerName: Player.init(name: ""))
    }
}
