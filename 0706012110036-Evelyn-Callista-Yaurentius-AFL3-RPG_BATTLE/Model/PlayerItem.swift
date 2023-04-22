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
    func useElixir(userMP: Int, userElixir:Int)->String{
        var text: String = ""
        if userElixir == 0{
            text="""
            You don't have any elixir left. Be careful of your next journey.
            
            Press [return] to go back
            """
        }
        // If atau Else untuk menghasilkan output berupa teks untuk konfirmasi penggunaan potion
        else{
            text="""
             Your MP is \(userMP).
             You have \(userElixir) elixirs.
             
             Are you sure want to use 1 elixir to restore mana? [Y/N]
             """
        }
        return text
    }
    func usePotion(userHP: Int, userPotion:Int)->String{
        var text: String = ""
        if userPotion == 0{
            text="""
            You don't have any potion left. Be careful of your next journey.
            Press [return] to go back
            """
        }
        // If atau Else untuk menghasilkan output berupa teks untuk konfirmasi penggunaan potion
        else{
            text="""
             Your HP is \(userHP).
             You have \(userPotion) potions.

             Are you sure want to use 1 potion to heal wound? [Y/N]
             """
        }
        return text
    }
}
