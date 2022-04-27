//
//  Game.swift
//  BullsEye
//
//  Created by DavidOnoh on 8/19/2014 ERA1.
//

import Foundation


struct Game{
    var target:Int = Int.random(in: 1...100)
    var score:Int = 0
    var round:Int = 1
    
    
    
    
    func points(sliderVlaue:Int)->Int{
        let difference:Int = abs(self.target - sliderVlaue)
        let awardedPoints : Int = 100 - difference
        return awardedPoints
    }
}
