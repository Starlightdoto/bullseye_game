//
//  Game.swift
//  BullsEye
//
//  Created by Almas on 08.02.2023.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points (sliderValue : Int) -> Int{
        var bonusPoints = 0
        let difference = abs(target - sliderValue)
        if(difference == 0)  {
            bonusPoints += 100
        }else if (difference <= 2) {
            bonusPoints = 50
        }else {
            bonusPoints = 0
        }
        return 100 - difference + bonusPoints
    }
    
    mutating func startNewRound(points: Int) {
        score += points
        round += 1
        target =  Int.random(in: 1...100)
    }
    
    mutating func restart() {
        score = 0
        round = 1
        target = Int.random(in: 1...100)
    }
}
