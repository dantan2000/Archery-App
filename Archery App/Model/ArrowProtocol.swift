//
//  ArrowProtocol.swift
//  Archery App
//
//  Created by daniel tan on 2/6/20.
//  Copyright © 2020 Daniel Tan. All rights reserved.
//

import Foundation

protocol ArrowProtocol {
    
    // Whether this arrow has been initialized
    var initialized: Bool { get }
    
    // Initializes Arrow from polar coordinates
    init(rad: Double, theta: Double, arrowSize:Double)
    
    // Initializes Arrow from a Posn
    init(p: Posn, arrowSize:Double)
    
    // Initializes an Arrow without any parameters
    init(arrowSize:Double)
    
    // Gets the Posn for this Arrow
    func getPosn() -> Posn
    
    // Returns the score for this arrow
    func getScore() -> Int
    
    
}
