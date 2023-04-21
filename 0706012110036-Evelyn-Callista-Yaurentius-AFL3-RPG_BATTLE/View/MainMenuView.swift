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
    @State var player : Player
//    //    var enemy : Enemy
//    @State private var golem = Enemy(name : "Golem", hp : 10, damage : 10, prize : 50, encounterText: "As you make your way through the rugged mountain terrain, you can feel the chill of the wind biting at your skin. \nSuddenly, you hear a sound that makes you freeze in your tracks. That's when you see it - a massive, snarling Golem emerging from the shadows.")
    var body: some View {
        Text("Hello, \(player.playerName)!")
        Text("Current HP, \(player.playerHp)!")
        Button {
            print("Button pressed")
        } label: {
            NavigationLink(destination: BattleView(player: player)) {
                Text("Check Your health and stats")
                    .padding(12)
                    .background(Color.green)
                    .foregroundColor(Color.white)
                    .cornerRadius(8)
            }
        }
        Button {
            print("Button pressed")
        } label: {
            NavigationLink(destination: BattleView(player: player)) {
                Text("Mountain of Golem")
                    .padding(12)
                    .background(Color.green)
                    .foregroundColor(Color.white)
                    .cornerRadius(8)
            }
        }
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView(player: Player.init(name: ""))
    }
}
