//
//  ArrowProtocol.swift
//  Archery App
//
//  Created by daniel tan on 2/6/20.
//  Copyright © 2020 Daniel Tan. All rights reserved.
//

import Foundation

// Represents a shot arrow.
protocol ArrowProtocol {
    
    // Whether this arrow has been initialized
    var initialized: Bool { get }
    
    // Initializes Arrow from polar coordinates
    init(rad: Double, theta: Double, arrowSize: Double) throws
    
    // Initializes Arrow from a Posn
    init(p: Posn, arrowSize: Double) throws
    
    // Initializes Arrow from a score
    init(score: Int, arrowSize: Double) throws
    
    // Initializes an Arrow without any parameters
    init(arrowSize: Double)
    
    // Gets the Posn for this Arrow
    func getPosn() throws -> Posn
    
    // Returns the score for this arrow
    func getScore() throws -> Int
    
}

enum ArrowError: Error {
    case invalidType(errorMsg: String)
    case notInitialized(errorMsg: String)
}
