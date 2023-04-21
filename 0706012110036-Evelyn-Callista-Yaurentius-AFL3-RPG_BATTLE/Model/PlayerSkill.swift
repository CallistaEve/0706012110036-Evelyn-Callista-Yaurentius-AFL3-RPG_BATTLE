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
    
    init(name:String, mp:Int , damage:Int, description:String){
        self.name = name
        self.mp = mp
        self.damage = damage
        self.description = description
    }
}
