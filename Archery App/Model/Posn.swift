//
//  Posn.swift
//  Archery App
//
//  Created by daniel tan on 2/6/20.
//  Copyright © 2020 Daniel Tan. All rights reserved.
//

import Foundation

// Represents the cartesian coordinate system of the target,
//  with (0,0) being the center.
public class Posn : Equatable {
    
    private var x: Double
    private var y: Double
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    
    init(theta: Double, rad: Double) {
        self.x = cos(theta) * rad
        self.y = sin(theta) * rad
    }
    
    // Takes in a Posn and returns a new Posn with the x's and y's added together
    public func add(other: Posn) -> Posn {
        return other.add(x: self.x, y: self.y)
    }
    
    // Takes in an x and y, returns a new Posn with the x's and y's added together
    public func add(x: Double, y: Double) -> Posn {
        return Posn(x: self.x + x,y: self.y + y)
    }
    
    
    // Returns a new posn with x and y values divided by the given divisor
    public func div(div: Double) -> Posn {
        return Posn(x: self.x / div, y: self.y / div)
    }
    
    // Returns a new posn with the same x and y values
    public func getSelf() -> Posn {
        return Posn(x: self.x, y: self.y)
    }
    
    // Returns the x for this Posn
    public func getX() -> Double {
        return self.x
    }
    
    // Returns the y for this Posn
    public func getY() -> Double {
        return self.y
    }
    
    // Updates the polar theta of this Posn
    public func updateTheta(theta: Double) {
        let rad = pow((pow(self.x, 2) + pow(self.y, 2)), 0.5)
        updateXY(theta: theta, rad: rad)
    }
    
    // Updates the polar rad of this Pos
    public func updateRad(rad: Double) {
        let theta = tan(self.x / self.y)
        updateXY(theta: theta, rad: rad)
    }
    
    // Updates the XY of this Pos to the given polar coordinates
    private func updateXY(theta: Double, rad: Double) {
        self.x = cos(theta) * rad
        self.y = sin(theta) * rad
    }
  
    
    public static func == (lhs: Posn, rhs: Posn) -> Bool {
        return abs(lhs.getX() - rhs.getX()) < 0.001 && abs(lhs.getY() - rhs.getY()) < 0.001
    }
    
}
