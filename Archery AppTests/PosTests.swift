//
//  PosTests.swift
//  Archery AppTests
//
//  Created by Daniel Tan on 5/12/20.
//  Copyright © 2020 Daniel Tan. All rights reserved.
//

import XCTest
@testable import Archery_App


class PosTests: XCTestCase {
    

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAdd() {
        let posn1 = Posn(x: 100, y: 100)
        let posn2 = Posn(x: 25, y: 50)
        let posn3 = Posn(x: -10, y: 15)
        
        
        XCTAssertEqual(posn1.add(other: posn2), Posn(x: 125, y: 150))
        
        XCTAssertEqual(posn2.add(other: posn3), Posn(x: 15, y: 65))
        
        XCTAssertEqual(posn1.add(x: 10, y: -150), Posn(x: 110, y: -50))
        
        XCTAssertEqual(posn3.add(x: -15, y: -20), Posn(x: -25, y: -5))
        
    }
    
    func testDiv() {
        let posn1 = Posn(x: 100, y: 100)
        let posn2 = Posn(x: 25, y: 50)
        let posn3 = Posn(x: -10, y: 15)
        
        XCTAssertEqual(posn1.div(div: 2.5), Posn(x: 40, y: 40))
        
        XCTAssertEqual(posn2.div(div: -5), Posn(x: -5, y: -10))
        
        XCTAssertEqual(posn3.div(div: 10), Posn(x: -1, y: 1.5))
    }
    
    func testInit() {
        let posn1 = Posn(x: 10, y: 0)
        let posn2 = Posn(theta: Double.pi / 2, rad: 10)
        
        let posn3 = Posn(x: 0, y: 5)
        let posn4 = Posn(theta: 0, rad: 5)
        
        let posn5 = Posn(x: 0, y: -15)
        let posn6 = Posn(theta: Double.pi, rad: 15)
        
        let posn7 = Posn(x: -20, y: 0)
        let posn8 = Posn(theta: 3 * Double.pi / 2, rad: 20)
        
        XCTAssertEqual(posn1, posn2)
        XCTAssertEqual(posn3, posn4)
        XCTAssertEqual(posn5, posn6)
        XCTAssertEqual(posn7, posn8)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
