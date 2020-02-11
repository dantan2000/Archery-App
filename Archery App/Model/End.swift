//
//  End.swift
//  Archery App
//
//  Created by daniel tan on 2/9/20.
//  Copyright © 2020 Daniel Tan. All rights reserved.
//

import Foundation

class End {
    
    private var endSize: Int
    private var arrows: [PolarArrow]
    
    init(endSize: Int, arrowSize: Double) {
        self.endSize = endSize
        self.arrows = Array(repeating: PolarArrow.init(arrowSize: arrowSize), count: endSize)
    }
    
    // gets the total score for this end
    func getScore() -> Int {
        var totalScore: Int = 0
        for arrow in arrows {
            totalScore += arrow.getScore()
        }
        return totalScore
    }
    
    // gets the individual arrow scores for this end
    func getArrowScores() -> [Int] {
        var arrowScores: [Int] = []
        for arrow in arrows {
            arrowScores.append(arrow.getScore())
        }
        return arrowScores
    }
    
    // gets the sum of all the Posns of the arrows in this end
    func getTotalPosn() -> Posn {
        var p: Posn = Posn.init(x: 0, y: 0)
        for arrow in arrows {
            if (arrow.isInitialized()) {
                p = p.add(other: arrow.getPosn())
            }
        }
        return p
    }
    
    // gets the number of initialized arrows in this end
    func getInitArrows() -> Int {
        var numInit: Int = 0
        for arrow in arrows {
            if (arrow.isInitialized()) {
                numInit += 1
            }
        }
        return numInit
    }
    
    // gets the arrow at the specified index
    func getArrow(index: Int) -> PolarArrow {
        return self.arrows[index]
    }
    
    func getArrows() -> [PolarArrow] {
        return self.arrows
    }
    
    
    
}
