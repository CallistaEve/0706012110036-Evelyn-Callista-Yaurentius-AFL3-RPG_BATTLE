//
//  PlayerSkillDataService.swift
//  0706012110036-Evelyn-Callista-Yaurentius-AFL3-RPG_BATTLE
//
//  Created by MacBook Pro on 23/04/23.
//

import Foundation

class PlayerSkillDataService {
    static let skills: [PlayerSkill] = [
        PlayerSkill("Physical Attack", 0, 5, "Physical Attack. No mana required. Deal 5pt of damage."),
        PlayerSkill("Meteor", 15, 50, "Meteor. Use 15pt of MP. Deal 50pt of damage."),
        PlayerSkill("Shield", 10, 0, "Shield. Use 10pt of MP. Block enemy's attack in 1 turn.")
    ]
}
