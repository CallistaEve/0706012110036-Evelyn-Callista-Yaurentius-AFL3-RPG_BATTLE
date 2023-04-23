//
//  PlayerItem.swift
//  0706012110036-Evelyn-Callista-Yaurentius-AFL3-RPG_BATTLE
//
//  Created by MacBook Pro on 20/04/23.
//

import Foundation

struct PlayerItem{
    var itemName: String=""
    var description: String = ""
    var quantity: Int = 0
    
    init(_ itemName:String, _ description:String ,_ quantity:Int){
        self.itemName = itemName
        self.description = description
        self.quantity = quantity
    }
    mutating func buy(money: Int, itemName:String)->Int{
        var moneyLeft = 0
        if money >= 5{
            self.quantity += 1
            moneyLeft = money - 5
            print("Thanks for your purchase!")
        }else{
            print("You don't have enough money to buy \(itemName)")
        }
        return moneyLeft
    }
}
