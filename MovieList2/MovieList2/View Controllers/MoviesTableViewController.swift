//
//  MoviesTableViewController.swift
//  MovieList2
//
//  Created by Welinkton on 9/7/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController, MovieListProtocol, MovieTableCellDelegate {
    
    var movieController: MovieController?
    
    func updateMovieCell(for cell: MoviesTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell),
            let movie = movieController?.movies[indexPath.row] else {return}
        movieController?.toggleIsSeen(movie: movie)
            tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }

   

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieController?.movies.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MoviesTableViewCell,
        let movie = movieController?.movies[indexPath.row] else {return UITableViewCell()}
        
        // Configure the cell...
        cell.movie = movie
        cell.delegate = self

        cell.updateViews()
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            guard let movie = movieController?.movies[indexPath.row] else {return}
            
            //will Delete movie
            movieController?.deleteMovie(movie: movie)
            
            //Deletes the cell
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}
