//
//  BattleView.swift
//  0706012110036-Evelyn-Callista-Yaurentius-AFL3-RPG_BATTLE
//
//  Created by MacBook Pro on 20/04/23.
//

import SwiftUI

struct BattleView: View {
    @State var player : Player
    @State var choosenEnemy : Enemy
    //    var enemy : Enemy
//    @State private var golem = Enemy(name : "Golem", hp : 15, damage : 10, prize : 50, encounterText: "As you make your way through the rugged mountain terrain, you can feel the chill of the wind biting at your skin. \nSuddenly, you hear a sound that makes you freeze in your tracks. That's when you see it - a massive, snarling Golem emerging from the shadows.")
//    @State private var troll = Enemy(name : "Troll", hp : 100, damage : 5, prize :20, encounterText :"As you enter the forest, you feel a sense of unease wash over you. \nSuddenly, you hear the sound of twigs snapping behind you. You quickly spin around, and find a Troll emerging from the shadows.")
    @State var win = false
    var body: some View {
        
        HStack(alignment: .top){
            VStack(alignment: .leading){
                Image("Wizard")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 160, height: 155)
                    .cornerRadius(5)
                VStack(alignment: .leading){
                    Text("Player Status: ")
                        .bold()
                    Text("Player Name: \(player.playerName)")
                    Text("Player HP: \(player.playerHp)")
                    Text("Player MP: \(player.mp)")
                    Text("Player Money: \(player.money)")
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
                    Text("Enemy Status: ")
                        .bold()
                    Text("Enemy Name: \(choosenEnemy.name)")
                    Text("Enemy HP: \(choosenEnemy.hp)")
                    Text("Enemy Attack: \(choosenEnemy.damage)")
                }
            }
            
        }
        ScrollView{
            
            VStack(alignment: .leading){
                Text("From here, you can...")
                if win == true{
                    Text("Congratz you got $\(choosenEnemy.prize) money")
//                    player.addMoney()
                }
                Button {
                    choosenEnemy.hp -= 10
                    player.playerHp -= 10
                    if choosenEnemy.hp == 0{
                        win = true
                        player.money += choosenEnemy.prize
                    }
                } label: {
                    if win == false{
                        Text("Attack")
                            .padding(12)
                            .background(Color.green)
                            .foregroundColor(Color.white)
                            .cornerRadius(8)
                    }
                    else{
//                        Text("Congratz you got $\(golem.prize) money")
                        Button {
                            
                        } label: {
                            
                            NavigationLink(destination: MainMenuView(playerName: Player(name: player.playerName)))
                            {
                                Text("Back to Main menu")
                                    .padding(12)
                                    .background(Color.green)
                                    .foregroundColor(Color.white)
                                    .cornerRadius(8)
                            }
                            
                        }
                    }
                    
                }
//                if golem.hp == 0{
//
//                }
            }
        }
    }
    
    struct BattleView_Previews: PreviewProvider {
        static var previews: some View {
            BattleView(player: Player(name: ""), choosenEnemy: Enemy(name: "", hp: 0, damage: 0, prize: 0, encounterText: ""))
        }
    }
    
}
