//
//  DesignView.swift
//  0706012110036-Evelyn-Callista-Yaurentius-AFL3-RPG_BATTLE
//
//  Created by MacBook Pro on 20/04/23.
//

import SwiftUI

struct DesignView: View {
    func design(text: String){
        Text(text)
            .background(Color.green)
            .foregroundColor(Color.white)
            .cornerRadius(8)
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DesignView_Previews: PreviewProvider {
    static var previews: some View {
        DesignView()
    }
}
