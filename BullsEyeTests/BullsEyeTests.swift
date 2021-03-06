//
//  BullsEyeTests.swift
//  BullsEyeTests
//
//  Created by DavidOnoh on 8/19/2014 ERA1.
//

import XCTest
@testable import BullsEye

class BullsEyeTests: XCTestCase {
    var game: Game!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
         game  = Game()
        
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        game = nil
    }
    
    func testScorePositive(){
        let guess = game.target + 5
        let score = game.points(sliderVlaue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative(){
        let guess = game.target - 5
        let score = game.points(sliderVlaue: guess)
        XCTAssertEqual(score, 95)
    }
    
}
