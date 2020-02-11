//
//  Posn.swift
//  Archery App
//
//  Created by daniel tan on 2/6/20.
//  Copyright © 2020 Daniel Tan. All rights reserved.
//

import Foundation

class Posn {
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
    func add(other: Posn) -> Posn {
        return other.add(x: self.x, y: self.y)
    }
    
    // Takes in an x and y, returns a new Posn with the x's and y's added together
    func add(x: Double, y: Double) -> Posn {
        return Posn(x: self.x + x,y: self.y + y)
    }
    
    
    // Returns a new posn with x and y values divided by the given divisor
    func div(div: Double) -> Posn {
        return Posn(x: self.x / div, y: self.y / div)
    }
    
    // Returns a new posn with the same x and y values
    func getSelf() -> Posn {
        return Posn(x: self.x, y: self.y)
    }
    
    // Returns the x for this Posn
    func getX() -> Double {
        return self.x
    }
    
    // Returns the y for this Posn
    func getY() -> Double {
        return self.y
    }
  
    
    
    
}
