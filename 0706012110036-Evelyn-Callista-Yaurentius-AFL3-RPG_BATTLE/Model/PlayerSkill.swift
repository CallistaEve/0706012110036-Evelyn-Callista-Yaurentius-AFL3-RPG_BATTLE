//
//  PlayerSkill.swift
//  0706012110036-Evelyn-Callista-Yaurentius-AFL3-RPG_BATTLE
//
//  Created by MacBook Pro on 20/04/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct playerSkill{
    var name: String
    var description: String
    var mp: Int
    var damage: Int
    
    init(_ name:String, _ mp:Int ,_ damage:Int,_ description:String){
        self.name = name
        self.mp = mp
        self.damage = damage
        self.description = description
    }
    
    func defaultAttack(hp: Int)->Int{
        print("""
    ============= Player Turn =============
    Player deal \(damage)pt to player
    
    """)
        let hpLeft = hp - damage
        return hpLeft
    }
    
    func attack(skillName: String, playerName: String, playerMp: Int, playerDamage: Int, enemy: String, enemyHP: Int)->(hpLeft: Int, mpLeft: Int, move: Int){
        var hpLeft: Int = enemyHP
        var mpLeft: Int = playerMp
        var move: Int = 1
        if skillName == "Meteor" || skillName == "Shield"{
            if playerMp <= 0{
                move = 0
    print ("""
        ============= Player Turn =============
        You ran out of Mana, can't use \(skillName)
        Use Elixir to restore Mana
                    
        Press [return] to go back:
        """)
                return (hpLeft, mpLeft, move)
            }else if playerMp < mp{
                move = 0
            print  ("""
        ============= Player Turn =============
        Your current mana : \(playerMp)
        Your Mana doesn't enough to cast \(skillName)
        Use Elixir to restore Mana
            
        Press [return] to go back:
        """
                        )
                return (hpLeft, mpLeft, move)
            }
        }
        if skillName == "Shield"{
            move = 0
            print("""
            ============= Player Turn =============
            \(playerName) use \(mp)pt Mana to use \(skillName) against \(enemy)
            It blocks an upcoming attack
            
            Press [return] to continue:
            """)
        }else{
        print("""
    ============= Player Turn =============
    \(playerName) use \(skillName) to \(enemy)
    It deals \(playerDamage)pt to \(enemy)
    """)
        }
        hpLeft = enemyHP - playerDamage
        mpLeft = playerMp - mp
        return (hpLeft, mpLeft, move)
}
    func run(){
        print("""
    You feel that if you don't escape soon, you won't be able to continue the fight.
    You look around frantically, searching for a way out. You sprint towards the exit, your heart punding in your chest.
    
    You're safe, for now.
    Press [return] to continue:
    
    """)
    }
    
}
