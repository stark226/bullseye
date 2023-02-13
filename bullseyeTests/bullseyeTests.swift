//
//  bullseyeTests.swift
//  bullseyeTests
//
//  Created by stefano cardia on 25/10/22.
//

import XCTest
#warning("importiamo il modilo dell'app perchè questi test sono in un target differente")
@testable import bullseye

class bullseyeTests: XCTestCase {

    var game: Game!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        game = Game()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.

        game = nil

    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        
        //era valido quando davo obbligatoriamente 999 come risultato di calculatePoints
//        XCTAssertEqual(game.calculatePoints(sliderValue: 50), 999)
        
    }

    //proviamo dei test dove simuliamo che in un caso proviamo a dare un risultato che supera di 5 nell'altro che è inferiore di 5
    
    func testScorePositive() {
        let guess = game.target + 5
        let score = game.calculatePoints(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative() {
        let guess = game.target - 5
        let score = game.calculatePoints(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
