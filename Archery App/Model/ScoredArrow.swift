//
//  ScoredArrow.swift
//  Archery App
//
//  Created by Daniel Tan on 5/23/20.
//  Copyright © 2020 Daniel Tan. All rights reserved.
//

import Foundation

class ScoredArrow: ArrowProtocol {
    private var score: Int
    internal var initialized: Bool
    private var arrowSize: Double
    
    required init(rad: Double, theta: Double, arrowSize: Double) throws {
        self.score = max(10 - Int(theta - arrowSize), 0)
        self.initialized = true
    }
    
    required init(p: Posn, arrowSize: Double) throws {
        let theta: Double = pow(pow(p.getX(), 2) + pow(p.getY(), 2), 0.5)
        self.score = max(10 - Int(theta - arrowSize), 0)
        self.initialized = true;
    }
    
    required init(score: Int, arrowSize: Double) throws {
        self.score = score
        self.arrowSize = arrowSize
        self.initialized = true
    }
    
    required init(arrowSize: Double) {
        self.arrowSize = arrowSize
        self.initialized = false
    }
    
    func getPosn() throws -> Posn {
        throw ArrowError.invalidType(errorMsg: "Error: cannot set Posn of ScoredArrow")
    }
    
    func getScore() throws -> Int {
        if (self.initialized) {
            return self.score
        }
        throw ArrowError.notInitialized(errorMsg: "Error: Cannot get score of uninitilaized ScoredArrow.")
    }
    

    
}
