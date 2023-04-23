//
//  MovieManager.swift
//  Film(TDD)
//
//  Created by Kato Steven Mubiru on 23/04/2023.
//

import Foundation

class MovieManager{
    var movieToSee = 0
    let movieSeen = 0
    
    func addMovie(movie : Movie){
        movieToSee += 1
    }//addMovie

    func movieAtIndex(index: Int) -> Movie{
        
       return Movie(title: "Teen Comedy")
    }//movieAtIndex
}//MovieManager

