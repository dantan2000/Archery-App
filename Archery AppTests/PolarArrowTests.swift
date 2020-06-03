//
//  PolarArrowTests.swift
//  Archery AppTests
//
//  Created by Daniel Tan on 5/23/20.
//  Copyright © 2020 Daniel Tan. All rights reserved.
//

import XCTest

@testable import Archery_App

class PolarArrowTests: XCTestCase {
    
    var arrow1: ArrowProtocol
    var arrow2: ArrowProtocol
    var arrow3: ArrowProtocol
    
    override init() {
        arrow1 = PolarArrow(rad: 3, theta: Double.pi / 4, arrowSize: 0)
        arrow2 = PolarArrow(p: Posn(x: -2, y: 1), arrowSize: 0)
        arrow3 = PolarArrow(arrowSize: 0)
        super.init()
    }

    override func setUp() {
        arrow1 = PolarArrow(rad: 3, theta: Double.pi / 4, arrowSize: 0)
        arrow2 = PolarArrow(p: Posn(x: -2, y: 1), arrowSize: 0)
        arrow3 = PolarArrow(arrowSize: 0)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // Tests the initializers of PolarArrow
    func testInit() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    // Tests the getPosn and setPosn methods of PolarArrow
    func testGetSetPosn() {
        
    }
    
    // Tests the getScore method of PolarArrow
    func testGetScore() {
        
    }
    
    // Tests the getRad and setRad methods of PolarArrow
    func testGetSetRad() {
        
    }
    
    // Tests the getTheta and setTheta methods of PolarArrow
    func testGetSetTheta() {
        
    }
    
    // Tests throws of methods
    func testThrows() {
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
