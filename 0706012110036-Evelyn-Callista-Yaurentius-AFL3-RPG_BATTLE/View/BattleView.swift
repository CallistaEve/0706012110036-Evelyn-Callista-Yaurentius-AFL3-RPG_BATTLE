//
//  BattleView.swift
//  0706012110036-Evelyn-Callista-Yaurentius-AFL3-RPG_BATTLE
//
//  Created by MacBook Pro on 20/04/23.
//

import SwiftUI

class PlayerSkillsViewModel: ObservableObject{
    @Published var skills: [PlayerSkill]
    init(){
        let skills = PlayerSkillDataService.skills
        self.skills = skills
    }
}

struct BattleView: View {
    @Binding var player : Player
    @Binding var playerPotion : PlayerItem
    @Binding var playerElixir : PlayerItem
    @State var choosenEnemy : Enemy
    @StateObject private var psm = PlayerSkillsViewModel()
    @Environment(\.presentationMode)private var presentationMode: Binding<PresentationMode>
    @State var win = false
    @State var lose = false
    @State var tie = false
    var body: some View {
        if choosenEnemy.name == "Troll"{
            Text("Forest of Troll")
                .bold()
        }else{
            Text("Mountain of Golem")
                .bold()
        }
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
                Image("\(choosenEnemy.imageName)")
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
                if win == true{
                    Text("Congratz you got $\(choosenEnemy.prize) money")
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Text("Back")
                            .padding(12)
                            .background(Color.yellow)
                            .foregroundColor(Color.black)
                            .cornerRadius(8)
                    })
                }
                else if lose == true{
                    Text("Game Over")
                    Text("\(player.playerName) ran out of HP!!\nYou flee from the battle and went to the hospitals\n\(player.playerName) HP and MP restored")
                    Button(action: {
                        player.playerHp = 100
                        player.mp = 50
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Text("Back")
                            .padding(12)
                            .background(Color.yellow)
                            .foregroundColor(Color.black)
                            .cornerRadius(8)
                    })
                }else if tie == true{
                    Text("Game Over")
                    Text("Both \(player.playerName) and the \(choosenEnemy.name) ran out of HP!!\nThe villagers found and took you to the hospital\n\(player.playerName) HP and MP restored\nYou pay the villagers the money you got for their help")
                    Button(action: {
                        player.playerHp = 100
                        player.mp = 50
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Text("Back")
                            .padding(12)
                            .background(Color.yellow)
                            .foregroundColor(Color.black)
                            .cornerRadius(8)
                    })
                }
                else{
                    Text("\(choosenEnemy.encounterText)")
                    HStack{
                        Button {
                            choosenEnemy.hp -= 10
                            player.playerHp -= choosenEnemy.damage
                            if player.playerHp <= 0 && choosenEnemy.hp <= 0{
                                tie = true
                            }else if player.playerHp <= 0{
                                lose = true
                            }else if choosenEnemy.hp <= 0{
                                win = true
                                player.money += choosenEnemy.prize
                            }
                        } label: {
                            Text("Physical Attack")
                                .padding(12)
                                .background(Color.green)
                                .foregroundColor(Color.white)
                                .cornerRadius(8)
                        }
                        Button {
                            if player.mp >= 15{
                                choosenEnemy.hp -= 50
                                player.playerHp -= choosenEnemy.damage
                                player.mp -= 15
                                if player.playerHp <= 0 && choosenEnemy.hp <= 0{
                                    tie = true
                                }else if player.playerHp <= 0{
                                    lose = true
                                }else if choosenEnemy.hp <= 0{
                                    win = true
                                    player.money += choosenEnemy.prize
                                }
                            }
                        } label: {
                            if player.mp >= 15{
                                Text("Meteor Attack")
                                    .padding(12)
                                    .background(Color.green)
                                    .foregroundColor(Color.white)
                                    .cornerRadius(8)
                            }else{
                                Text("Mana doesnt enough to cast Meteor Attack")
                                    .padding(12)
                                    .background(Color.red)
                                    .foregroundColor(Color.black)
                                    .cornerRadius(8)
                                    .disabled(true)
                            }
                        }
                    }
                    
                    HStack{
                        Button {
                            if player.mp >= 10{
                                choosenEnemy.hp -= 10
                                player.playerHp -= 10
                                choosenEnemy.hp += 10
                                player.playerHp += 10
                                player.mp -= 10
                            }
                        } label: {
                            if player.mp >= 10{
                                Text("Shield")
                                    .padding(12)
                                    .background(Color.green)
                                    .foregroundColor(Color.white)
                                    .cornerRadius(8)
                            }else{
                                Text("Mana doesnt enough to cast Shield")
                                    .padding(12)
                                    .background(Color.red)
                                    .foregroundColor(Color.black)
                                    .cornerRadius(8)
                                    .disabled(true)
                            }
                        }
                        Button {
                        } label: {
                            NavigationLink(destination: UseItemView(player: $player, playerPotion: $playerPotion, playerElixir: $playerElixir)) {
                                Text("Use Items")
                                    .padding(12)
                                    .background(Color.green)
                                    .foregroundColor(Color.white)
                                    .cornerRadius(8)
                            }
                        }
                    }
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Text("Run")
                            .padding(12)
                            .background(Color.red)
                            .foregroundColor(Color.black)
                            .cornerRadius(8)
                    })
                }
            }
        }
    }
}

//    struct BattleView_Previews: PreviewProvider {
//        static var previews: some View {
////            BattleView(player: Player(name: ""), choosenEnemy: Enemy(name: "", hp: 0, damage: 0, prize: 0, encounterText: ""))
//            BattleView(player: Bind, choosenEnemy: Enemy.init(name: "", hp: 0, damage: 0, prize: 0, encounterText: ""))
//        }
//    }


