//
//  Game.swift
//  BullsEye
//
//  Created by DavidOnoh on 8/19/2014 ERA1.
//

import Foundation


struct Game{
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    
    
    
    func points(sliderVlaue:Int)->Int{
        let difference = abs(self.target - sliderVlaue)
        let awardedPoints  = 100 - difference
        return awardedPoints
    }
}
