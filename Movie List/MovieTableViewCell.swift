//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Ufuk Türközü on 08.11.19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieLabel: UILabel!
    
    @IBAction func SeenOrUnseen(sender: Any) {
        
        sender.setTitle("seen", forState: .normal)
        
        delegate?.movieHasBeenSeen(cell: self)

    }
    
    
    var delegate: AddMovieDelegate?
    
    var moviesName: Movie? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
            guard let movie = moviesName else { return }
            
        movieLabel.text = movie.moviesName
        
        }

    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
