//
//  movieTest.swift
//  Film(TDD)Tests
//
//  Created by Kato Steven Mubiru on 23/04/2023.
//

import XCTest
@testable import Film_TDD_

final class movieTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func testInit_MovieTitle(){
        let testMovie = Movie(title: "Block Buster")
        
        XCTAssertNotNil(testMovie)
        XCTAssertEqual(testMovie.title, "Block Buster")
    }//testInit_MovieTitle

    func testInit_setMovieTitleandReleaseDate(){
        
        let testMovie = Movie(title: "Romantic Comedy", releaseDate : "1999")
        
        XCTAssertNil(testMovie)
    }//testInit_setMovieTitleandReleaseDate
}
