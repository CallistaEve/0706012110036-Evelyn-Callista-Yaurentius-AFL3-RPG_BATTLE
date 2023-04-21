//
//  Player.swift
//  0706012110036-Evelyn-Callista-Yaurentius-AFL3-RPG_BATTLE
//
//  Created by MacBook Pro on 20/04/23.
//

import Foundation
import SwiftUI
import CoreLocation

class Player{
    public var playerName: String
    public var playerHp: Int
    public var mp: Int
    public var money: Int
//    var playerSkill : [playerSkill] = [physicalAttack, meteor, shield, run]
    init(name:String){
        self.playerName = name
        playerHp = 100
        mp = 50
        money = 0
    }
    func addMoney(){
        money += 10
    }
}
