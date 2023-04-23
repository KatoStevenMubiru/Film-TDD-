//
//  MovieManager.swift
//  Film(TDD)
//
//  Created by Kato Steven Mubiru on 23/04/2023.
//

import Foundation

class MovieManager{
    var movieToSee = 0
    var movieSeen = 0
    
    private var moviesToSeeArray = [Movie]()
    private var moviesSeenArray = [Movie]()
    
    func addMovie(movie : Movie){
        movieToSee += 1
        moviesToSeeArray.append(movie)
    }//addMovie

    func movieAtIndex(index: Int) -> Movie{
        
       return moviesToSeeArray[index]
    }//movieAtIndex
    
    func checkOffMovie(index: Int){
        guard index < movieToSee else { return }
        movieToSee -= 1
        movieSeen  += 1
        
        moviesToSeeArray.remove(at: index)
    }
    func checkedOffMovie(index: Int) -> Movie{
        
        
    }//checkedOffMovie
}//MovieManager

