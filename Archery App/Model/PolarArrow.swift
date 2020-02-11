//
//  PolarArrow.swift
//  Archery App
//
//  Created by daniel tan on 2/6/20.
//  Copyright © 2020 Daniel Tan. All rights reserved.
//

import Foundation

class PolarArrow: ArrowProtocol {
    private var rad: Double
    private var theta: Double
    internal var initialized: Bool
    private var arrowSize: Double
    
    required init(rad: Double, theta: Double, arrowSize:Double) {
        self.rad = rad
        self.theta = theta
        self.initialized = true
        self.arrowSize = arrowSize
    }
    
    required init(p: Posn, arrowSize:Double) {
        self.rad = sqrt(pow(p.getX(), 2) + pow(p.getY(), 2))
        self.theta = atan(p.getY() / p.getX())
        self.initialized = true
        self.arrowSize = arrowSize
    }
    
    required init(arrowSize:Double) {
        self.rad = 1
        self.theta = 0
        self.arrowSize = arrowSize
        initialized = false
    }
    
    // sets the radius and theta for this arrow based on the given Posn
    func setPosn(p: Posn) {
        self.rad = sqrt(pow(p.getX(), 2) + pow(p.getY(), 2))
        self.theta = atan(p.getY() / p.getX())
    }
    
    // sets the radius for this arrow based on the given arro
    func setRad(rad: Double) {
        self.rad = rad
    }
    
    // sets the radius for this arrow based on the given arro
    func setTheta(theta: Double) {
        self.theta = theta
    }
    
    // gets the Posn for this arrow
    func getPosn() -> Posn {
        return Posn(x: rad * cos(theta), y: rad * sin(theta))
    }
    
    // retuns whether this arrow has been initialized
    func isInitialized() -> Bool {
        return self.initialized
    }
    
    // gets the score for this arrow
    func getScore() -> Int {
        if (initialized) {
            if (Int(theta) == 11) {
                return 10
            }
            return Int(theta)
        } else {
            return 0
        }
    }
    
    
    
    
    
}
