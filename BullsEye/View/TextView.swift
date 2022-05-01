//
//  TextView.swift
//  BullsEye
//
//  Created by DavidOnoh on 8/23/2014 ERA1.
//

import SwiftUI

struct InstructionText: View {
    
    var text:String
    //new instance of Game struct
    
    @State private var game = Game()
    var body: some View {
        Text(text.uppercased()).bold().kerning(2.0)
            .multilineTextAlignment(.center).lineSpacing(4.0).font(.footnote)
        Text(String(game.target)).font(.largeTitle).kerning(-1.0)
            .fontWeight(.black).foregroundColor(Color("textColor"))
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        InstructionText(text: "Instructions")
    }
}
