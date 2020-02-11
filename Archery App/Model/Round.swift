//
//  Round.swift
//  Archery App
//
//  Created by daniel tan on 2/9/20.
//  Copyright © 2020 Daniel Tan. All rights reserved.
//

import Foundation


class Round {
    
    private var roundSize: Int
    private var endSize: Int
    private var ends: [End]
    
    init(roundSize: Int, endSize: Int, arrowSize: Double) {
        self.roundSize = roundSize;
        self.endSize = endSize
        ends = Array(repeating: End.init(endSize: endSize, arrowSize: arrowSize), count: roundSize)
    }
    
    // gets the score for this round
    func getScore() -> Int {
        var total: Int = 0;
        for end in ends {
            total += end.getScore()
        }
        return total;
    }
    
    // gets the score for the specified end in this round
    func getEndScore(endIndex: Int) -> Int {
        return ends[endIndex].getScore()
    }
    
    // gets the arrows in the specified end in this round
    func getEndArrows(endIndex: Int) -> [PolarArrow] {
        return ends[endIndex].getArrows()
    }
    
    
}
