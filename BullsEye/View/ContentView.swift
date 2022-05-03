//
//  ContentView.swift
//  BullsEye
//
//  Created by DavidOnoh on 8/16/2014 ERA1.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertVisible = false
    @State private var sliderContant = 50.0
    
    
    
    //new instance of Game struct
    @State private var game = Game()
    
    var body: some View {
        ZStack {
        BackgroundView(game: $game)
            VStack{
                InstructionText(text:   "🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
//                    .padding(.leading,30.0)
//                padding(.trailing,30.0)
                
                HStack {
                    Text("1").bold().foregroundColor(Color("textColor"))
                    Slider(value: self.$sliderContant,in:1.0...100)
                    Text("100").bold().foregroundColor(Color("textColor"))
                    
                }
                .padding()
                Button(action: {
                    print("Hello swift ui")  
                    self.alertVisible = true
                    // self.game.points(sliderVlaue:Int(self.sliderContant))
                }) {
                    Text("HIT ME".uppercased())
                        .bold()
                        .font(.title3)
                }
                .padding(20.0)
                .background(ZStack {
                    Color("ButtonColor")
                    LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                })
                .foregroundColor(Color.white)
                .cornerRadius(21.0)
                .overlay(RoundedRectangle(cornerRadius: 21.0).strokeBorder(Color.white,lineWidth: 2.0))
                
                .alert(isPresented: $alertVisible, content: {
                    return Alert(title: Text("Hello There"), message: Text("The Sliders value is \(Int(self.sliderContant))"), dismissButton: .default(Text("Awesome")))
                })
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .previewLayout(.fixed(width: 568, height: 329))
    }
}
