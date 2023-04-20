//
//  Player.swift
//  0706012110036-Evelyn-Callista-Yaurentius-AFL3-RPG_BATTLE
//
//  Created by MacBook Pro on 20/04/23.
//

import Foundation

struct Player{
    var name: String
    var hp: Int
    var mp: Int
    var money: Int
//    var playerSkill : [playerSkill] = [physicalAttack, meteor, shield, run]
    init(_ name:String){
        self.name = name
        hp = 100
        mp = 50
        money = 0
    }
}
