//
//  movieManagerTests.swift
//  Film(TDD)Tests
//
//  Created by Kato Steven Mubiru on 23/04/2023.
//

import XCTest

@testable import Film_TDD_
final class movieManagerTests: XCTestCase {
    
    var sut : MovieManager! //  let sut = MovieManager()//sut is system under test

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        sut = MovieManager()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    //MARK : initial values
    func testInit_MoviesToSee_ReturnsZero(){
      
        
        XCTAssertEqual(sut.movieToSee, 0)
        
    }//testInit_MoviesToSee_ReturnsZero
    
    //MARK : addInQuery
    func testInit_MoviesSeen_ReturnsZero(){
        
      //  let sut = MovieManager()
        
        XCTAssertEqual(sut.movieSeen, 0)
    }//testInit_MoviesSeen_ReturnsZero

}
