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
    
    //declare some sample movies
    let scifiMovie = Movie(title: "Sci-Fi")
    let arthouseMovie = Movie(title: "Drama")
    let actionMovie = Movie(title: "Action/Adventure")

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
    

    func testInit_MoviesSeen_ReturnsZero(){
        
      //  let sut = MovieManager()
        
        XCTAssertEqual(sut.movieSeen, 0)
    }//testInit_MoviesSeen_ReturnsZero

    //MARK : addInQuery
    
    func testAdd_MoviesToSee_Returns1(){
   
        sut.addMovie(movie: scifiMovie)
        
        XCTAssertEqual(sut.movieToSee, 1)
    }//testAdd_MoviesToSee_Returns1
    
    func testQuery_ReturnsMovieToIndex(){
        
        sut.addMovie(movie: arthouseMovie)
        
        let movieQuery = sut.movieAtIndex(index: 0)
        
        XCTAssertEqual(arthouseMovie.title, movieQuery.title)
        
    }//testQuery_ReturnsMovieToIndex
    
    //MARK : Checking Off
    func testCheckOffMovie_UpdatesMovieManagerCounts(){
        sut.addMovie(movie:  actionMovie)
        sut.checkOffMovie(index: 0)
        
        XCTAssertEqual(sut.movieToSee, 0)
        XCTAssertEqual(sut.movieSeen, 1)
    }//testCheckOffMovie_UpdatesMovieManagerCounts
    
    func testCheckOffMovie_RemovesMovies(){
        sut.addMovie(movie: scifiMovie)
        sut.addMovie(movie: arthouseMovie)
        sut.checkOffMovie(index: 0)
        
        XCTAssertEqual(sut.movieAtIndex(index: 0).title, arthouseMovie.title)
    }//testCheckOffMovie_RemovesMovies
    
    func testCheckOff_ReturnsMovies(){
        sut.addMovie(movie: scifiMovie)
        sut.checkOffMovie(index: 0)
        
        let movieQuery = sut.checkOffMovie(index: 0)
        //XCTAssertEqual(scifiMovie.title, movieQuery.title)
        
        
    }//testCheckOff_ReturnsMovies
    
}
