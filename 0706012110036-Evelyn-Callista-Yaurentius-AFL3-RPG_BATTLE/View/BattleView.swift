//
//  BattleView.swift
//  0706012110036-Evelyn-Callista-Yaurentius-AFL3-RPG_BATTLE
//
//  Created by MacBook Pro on 20/04/23.
//

import SwiftUI

struct BattleView: View {
    @State var player : Player
    //    var enemy : Enemy
    @State private var golem = Enemy(name : "Golem", hp : 10, damage : 10, prize : 50, encounterText: "As you make your way through the rugged mountain terrain, you can feel the chill of the wind biting at your skin. \nSuddenly, you hear a sound that makes you freeze in your tracks. That's when you see it - a massive, snarling Golem emerging from the shadows.")
    
    var body: some View {
        
        HStack(alignment: .top){
            //                            if start == true{
            //                                Image("Wizard")
            //                                    .renderingMode(.original)
            //                                    .resizable()
            //                                    .frame(width: 160, height: 155)
            //                                    .cornerRadius(5)
            //                            }
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
                    Text("Enemy Name: \(golem.name)")
                    Text("Enemy HP: \(golem.hp)")
                    Text("Enemy Attack: \(golem.damage)")
                }
            }
            
        }
        ScrollView{
            
            VStack(alignment: .leading){
                Text("From here, you can...")
                
                Button {
                    golem.hp -= 10
                    player.playerHp -= 10
                    if golem.hp == 0{
                        
                        player.money += golem.prize
                    }
                } label: {
                    
                    Text("Attack")
                        .padding(12)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(8)
                    
                }
                if golem.hp == 0{
                    Text("Congratz you got $\(golem.prize) money")
                    Button {
                        
                    } label: {
                        
                        NavigationLink(destination: MainMenuView(player: Player(name: player.playerName)))
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
        }
    }
    
    struct BattleView_Previews: PreviewProvider {
        static var previews: some View {
            BattleView(player: Player(name: ""))
        }
    }
    
}
