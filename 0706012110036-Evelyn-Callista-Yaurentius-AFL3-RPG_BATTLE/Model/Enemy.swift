//
//  Enemy.swift
//  0706012110036-Evelyn-Callista-Yaurentius-AFL3-RPG_BATTLE
//
//  Created by MacBook Pro on 20/04/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct Enemy{
//    struct Enemy: Hashable, Identifiable {
    var name: String = ""
    var hp: Int = 0
    var damage: Int = 0
    var prize: Int = 0
    var encounterText: String = ""
    
    init(name:String, hp:Int ,damage:Int,prize:Int, encounterText: String){
        self.name = name
        self.hp = hp
        self.damage = damage
        self.prize = prize
        self.encounterText = encounterText
    }
    
    
//    var category: Category
//    enum Category: String, CaseIterable, Codable {
//        case lakes = "Lakes"
//        case rivers = "Rivers"
//        case mountains = "Mountains"
//    }
    
//    private var imageName: String
//    var image: Image {
//        Image(imageName)
//    }
    
}

class createEnemy{
//    var golem = Enemy(name: "Golem", hp: 150, damage: 10, prize: 100, encounterText: "This is Golem", imageName: "Golem")
}
