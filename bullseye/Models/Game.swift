//
//  Game.swift
//  bullseye
//
//  Created by stefano cardia on 24/10/22.
//

import Foundation


struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func calculatePoints(sliderValue: Int) -> Int {
//        var difference: Int
//
//        if  sliderValue > self.target {
//            difference = sliderValue - self.target
//        } else if self.target > sliderValue {
//            difference = self.target - sliderValue
//        } else {
//            difference = 0
//        }

        #warning("qui usi ABS per avere un numero comunque positivo, risparmi linee di codice")
        
        let difference = abs(self.target - sliderValue)

        let awarderdPoints = 100 - difference
        
        return awarderdPoints
    }
    
}
