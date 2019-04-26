//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Steven Leyva on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

//protocol AddStudentDelegate {
//   func newStudentWasAdded(with name: String)


class MoviesTableViewController: UITableViewController, MoviePresenter {
    
    var movieController: MovieController?

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func unseenButtonPressed(_ sender: Any) {
        print("seen")
    }
    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
    
        return movieController?.movies.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)

        
        let movie = movieController?.movies[indexPath.row]
        
        cell.textLabel?.text = movie?.text
    
        return cell
    }



}

//extension TestTableViewController: AddStudentDelegate
//  func newStudentWasAdded(with name: String) {
