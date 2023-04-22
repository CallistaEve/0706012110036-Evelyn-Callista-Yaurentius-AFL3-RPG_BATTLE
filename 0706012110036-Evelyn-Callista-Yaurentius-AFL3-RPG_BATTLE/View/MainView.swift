//
//  MainView.swift
//  0706012110036-Evelyn-Callista-Yaurentius-AFL3-RPG_BATTLE
//
//  Created by MacBook Pro on 20/04/23.
//

import SwiftUI

struct MainView: View {
    @State private var answer: String = ""
    @State private var start: Bool = true
    @State private var next: Bool = false
    @State private var next2: Bool = false
    
    var body: some View {
        VStack(alignment: .leading){
            Image("Wizard")
                .renderingMode(.original)
                .resizable()
                .frame(width: 160, height: 155)
                .cornerRadius(5)
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
                            let player = Player(name: answer)
                            let potion = PlayerItem("Potion", "Restore 50pt of HP", 20)
                            let elixir = PlayerItem("Elixir", "Restore 20pt of MP", 20)
                            VStack(alignment: .leading){
                                Button {
                                } label: {
                                    if answer != ""{
                                        NavigationLink(destination: MainMenuView(playerName: player, playerPotion: potion, playerElixir: elixir)) {
                                            Text("Start the Adventure")
                                                .padding(12)
                                                .background(Color.green)
                                                .foregroundColor(Color.white)
                                                .cornerRadius(8)
                                                .frame(maxWidth: 300)
                                                .bold()
                                        }
                                    }else{
                                        Text("Please enter your nickname")
                                            .padding(12)
                                            .background(Color.red)
                                            .foregroundColor(Color.black)
                                            .cornerRadius(8)
                                            .frame(maxWidth: 300)
                                            .bold()
                                    }
                                }
                                
                            }
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

