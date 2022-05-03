//
//  BackgroundView.swift
//  BullsEye
//
//  Created by DavidOnoh on 8/25/2014 ERA1.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game:Game
    
    var body: some View {
        VStack{
            TopView(game: $game)
            Spacer()
            BottomView(game: $game)
        }
        .padding()
        .background(Color("BckgroundColor").edgesIgnoringSafeArea(.all))
        
    }
}

struct TopView: View {
    @Binding var game:Game
    var body: some View {
        HStack{
            RoundedViewStroked(systemName:"arrow.counterclockwise")
            Spacer()
            RoundedViewStroked(systemName: "list.dash")
        }
    }
}


struct NumberView: View{
    var text: String
    var  score: String
    var body: some View{

        HStack {
            Text(score).frame(width: 70.0, height: 56.0, alignment: .center).overlay(RoundedRectangle(cornerRadius: 16.0).strokeBorder().foregroundColor(Color("ButtonStrokeColor")))
            Spacer()
            Text(text).frame(width: 70.0, height: 56.0, alignment: .center).overlay(RoundedRectangle(cornerRadius: 16.0).strokeBorder().foregroundColor(Color("ButtonStrokeColor")))
        }
       
        
    }
}

struct LabelTextView:View{
    var body: some View{
        HStack{
            Text("Score").font(.headline).kerning(2.0)
            Spacer()
            Text("Round").font(.headline).kerning(2.0)
        }
    }
}

struct BottomView: View {
    @Binding var game:Game
    
    var body: some View {
        VStack {
            LabelTextView()
            NumberView(text: String(game.round), score: String(game.score))
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}
