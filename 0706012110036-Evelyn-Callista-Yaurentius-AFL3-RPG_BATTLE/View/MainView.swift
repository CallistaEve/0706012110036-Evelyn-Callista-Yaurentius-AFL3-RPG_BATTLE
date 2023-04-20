//
//  MainView.swift
//  0706012110036-Evelyn-Callista-Yaurentius-AFL3-RPG_BATTLE
//
//  Created by MacBook Pro on 20/04/23.
//

import SwiftUI

struct MainView: View {
    //    @State private var txtValue: String = ""
    @State private var answer: String = ""
    @State private var start: Bool = true
    @State private var next: Bool = false
    @State private var next2: Bool = false
    @State private var playerMenu = [1, 2, 3]
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .top){
                if start == true{
                    Image("Wizard")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 160, height: 155)
                        .cornerRadius(5)
                }
                else if next == true{
                    BattleView(player: Player.init("player"))
                }
            }
            .padding()
            ScrollView{
                VStack{
                    Text("Welcome to the world of magic!\nYou have been chosen to embark on an epic journey as a young wizard on the path to becoming a master of the arcane arts. Your adventures will take you through forests, mountains, and dungeons, where you will face challenges, make allies, and fight enemies.\nPress [Next] to continue:")
                        .padding(12)
                        .background(Color.white)
                        .foregroundColor(Color.black)
                        .cornerRadius(8)
                        .shadow(color: Color.black, radius: 3)
                    
                    Button(action: {
                        next = true;
                        start = false
                    }){
                        Text("Next")
                            .padding(5)
                            .frame(maxWidth: 300)
                            .bold()
                    }
                    .background(Color.yellow)
                    .foregroundColor(Color.black)
                    .cornerRadius(8)
                    .shadow(color: Color.black, radius: 3)
                    .padding(.bottom)
                    Spacer()
                    if next == true{
                        Spacer()
                        Text("May I know your name, a young wizard?")
                            .padding(12)
                            .background(Color.white)
                            .foregroundColor(Color.black)
                            .cornerRadius(8)
                            .shadow(color: Color.black, radius: 3)
                        TextField("Enter your name", text: $answer)
                            .textFieldStyle(.roundedBorder)
                            .font(.callout)
                            .padding()
                            .frame(maxWidth: 300)
                            .cornerRadius(40)
                        Button(action: {
                            let convertInput = String(answer)
                            answer = String(convertInput)
                            next2 = true
                            var player = Player(answer)
                        }){
                            Text("Confirm")
                                .padding(5)
                                .frame(maxWidth: 300)
                                .bold()
                        }
                        .background(Color.yellow)
                        .foregroundColor(Color.black)
                        .cornerRadius(8)
                        .shadow(color: Color.black, radius: 3)
                        if next2 == true{
                            Text("Nice to meet you \(answer)!")
                            Text("From here, you can...\n[C]heck your health and stats\n[H]eal or Restore Your Wounds with Items\n[B]uy Items\n\n...or choose where you want to go\n\n[F]orest of Troll\n[M]ountain of Golem\n[Q]uit game\n\nYour choice?")
                        }
                    }
                }
                .padding()
            }
        }
        .padding()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

