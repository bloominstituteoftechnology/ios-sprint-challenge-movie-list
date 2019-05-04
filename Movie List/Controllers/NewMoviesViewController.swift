//
//  NewMoviesViewController.swift
//  Movie List
//
//  Created by Steven Leyva on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class NewMoviesViewController: UIViewController, MoviePresenter {
    var movieController: MovieController?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard segue.destination is MoviesTableViewController else { return }
        
        if segue.identifier == "MoviesTable" {
            
        }
        
        
    }
    

}
