//
//  EnemyDataService.swift
//  0706012110036-Evelyn-Callista-Yaurentius-AFL3-RPG_BATTLE
//
//  Created by MacBook Pro on 22/04/23.
//

import Foundation
class EnemyDataService {
    
    static let enemies: [Enemy] = [
        Enemy(name : "Troll", hp : 100, damage : 5, prize :20, encounterText :"As you enter the forest, you feel a sense of unease wash over you. \nSuddenly, you hear the sound of twigs snapping behind you. You quickly spin around, and find a Troll emerging from the shadows.", imageName: "Troll"),
        Enemy(name : "Golem", hp : 150, damage : 10, prize : 50, encounterText: "As you make your way through the rugged mountain terrain, you can feel the chill of the wind biting at your skin. \nSuddenly, you hear a sound that makes you freeze in your tracks. That's when you see it - a massive, snarling Golem emerging from the shadows.", imageName: "Golem")
    ]
}
