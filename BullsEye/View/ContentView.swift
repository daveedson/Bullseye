//
//  ContentView.swift
//  BullsEye
//
//  Created by DavidOnoh on 8/16/2014 ERA1.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertVisible:Bool = false
    @State private var sliderContant: Double = 50.0
    
    //new instance of Game struct
    @State private var game: Game = Game()
    
    var body: some View {
        VStack{
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO").bold().kerning(2.0)
                .multilineTextAlignment(.center).lineSpacing(4.0).font(.footnote)
            Text(String(game.target)).font(.largeTitle).kerning(-1.0)
                .fontWeight(.black)
    
            HStack {
                
                Text("1").bold()
                Slider(value: self.$sliderContant,in:1.0...100)
                Text("100").bold()
            }
            Button(action: {
                print("Hello swift ui")
                self.alertVisible = true
              
                print(  self.game.points(sliderVlaue:Int(self.sliderContant)))
            }) {
                Text("Hit me")
            }
            .alert(isPresented: $alertVisible, content: {
                return Alert(title: Text("Hello There"), message: Text("The Sliders value is \(Int(self.sliderContant))"), dismissButton: .default(Text("Awesome")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some
        
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 329))
    }
}
