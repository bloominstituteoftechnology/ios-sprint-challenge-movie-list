//
//  MovieController.swift
//  iosSprintChallenge1
//
//  Created by Jonathan Ferrer on 4/26/19.
//  Copyright © 2019 Jonathan Ferrer. All rights reserved.
//

import Foundation

class MovieController {
    
    var movies: [Movie] = []
    
    
    //Creates a new movie and adds it to the array of movies
    func createMovie(movie: String) {
        
        let movieToBeAdded = Movie(movie: movie)
        
        movies.append(movieToBeAdded)
        
    }
    
    //removes the movie from the array
    func deleteMovie(movie: Movie) {
        
        guard let movieIndex = movies.firstIndex(of: movie) else { return }
        movies.remove(at: movieIndex)
        
    }
    
    
    
    
}
