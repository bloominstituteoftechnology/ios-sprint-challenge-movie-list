//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Claudia Contreras on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

protocol SeenButtonTappedDelegate: AnyObject {
    func seenButtonTappedCell(_ MovieTableViewCell: MovieTableViewCell, seenButtonTappedFor movie: Movie)
}

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    //IBOutlets
    @IBOutlet var movieTitleLabel: UILabel!
    @IBOutlet var seenButton: UIButton!
    
    //make a reference to our Movie object and call the updateview function
    var movie: Movie? {
        didSet {
            self.updateViews()
        }
    }
    
    weak var delegate: SeenButtonTappedDelegate?
    
    private func updateViews() {
        guard let movie = movie else {return}
        
        //use our friend object to fill in the data
        movieTitleLabel.text = movie.name
        
        //Change the label according to the seen property
        if movie.hasSeen {
            seenButton.setTitle("Seen", for: .normal)
        } else {
            seenButton.setTitle("Not Seen", for: .normal)
        }
        
        //Action to be performed when the button is tapped
        self.seenButton.addTarget(self, action: #selector(seenButtonTapped(_:)), for: .touchUpInside)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    

    //IBAction
    @IBAction func seenButtonTapped(_ sender: Any) {
        if let movie = movie,
            let _ = delegate {
            self.delegate?.seenButtonTappedCell(self, seenButtonTappedFor: movie)
        }
        updateViews()
        
    }
    

}
