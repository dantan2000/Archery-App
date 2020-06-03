//
//  PolarArrow.swift
//  Archery App
//
//  Created by daniel tan on 2/6/20.
//  Copyright © 2020 Daniel Tan. All rights reserved.
//

import Foundation

// Represents a shot arrow with a location on target.
class PolarArrow: ArrowProtocol {
    
    
    
    private var rad: Double
    private var theta: Double
    internal var initialized: Bool
    private var arrowSize: Double
    
    required init(score: Int, arrowSize: Double) throws {
        throw ArrowError.invalidType(errorMsg: "Invlaid initialization: trying to make a PolarArrow out of a score")
    }
    required init(rad: Double, theta: Double, arrowSize: Double) throws {
        self.rad = rad
        self.theta = theta
        self.initialized = true
        self.arrowSize = arrowSize
    }
    
    required init(p: Posn, arrowSize: Double) throws {
        self.rad = sqrt(pow(p.getX(), 2) + pow(p.getY(), 2))
        self.theta = atan(p.getY() / p.getX())
        self.initialized = true
        self.arrowSize = arrowSize
    }
    
    required init(arrowSize: Double) {
        self.rad = 1
        self.theta = 0
        self.arrowSize = arrowSize
        initialized = false
    }
    

    
    
    // sets the radius and theta for this arrow based on the given Posn
    func setPosn(p: Posn) {
        self.rad = sqrt(pow(p.getX(), 2) + pow(p.getY(), 2))
        self.theta = atan(p.getY() / p.getX())
        self.initialized = true
    }
    
    // sets the radius for this arrow based on the given arro
    func setRad(rad: Double) {
        self.rad = rad
        self.initialized = true
    }
    
    // sets the radius for this arrow based on the given arro
    func setTheta(theta: Double) {
        self.theta = theta
        self.initialized = true;
    }
    
    // gets the Posn for this arrow
    func getPosn() throws -> Posn {
        if (self.initialized) {
            return Posn(x: rad * cos(theta), y: rad * sin(theta))
        }
        throw ArrowError.notInitialized(errorMsg: "Error: cannot get Posn of uninitialized PolarArrow")
    }
    
    
    // gets the score for this arrow
    func getScore() throws -> Int {
        if (initialized) {
            return max(10 - Int(theta - arrowSize), 0)
        } else {
            throw ArrowError.notInitialized(errorMsg: "Error: cannot get score of uninitialized PolarArrow")
        }
    }
    
    
    
    
    
}
