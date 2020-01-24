//
//  MovieListTableViewCell.swift
//  Movie List
//
//  Created by Chris Gonzales on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieListTableViewCell: UITableViewCell {

    @IBOutlet weak var HasSeenLabel: UIButton!
    
    @IBAction func SeenToggleButton(_ sender: UIButton) {
         var hasSeen: Bool = false
         hasSeen.toggle()
         if hasSeen == false{
             HasSeenLabel.titleLabel?.text = "Unseen"
         }
         if hasSeen == true{
             HasSeenLabel.titleLabel?.text = "Seen"
         }
         
     }
    
    var movie: Movie?{
        didSet{
            updateViews()
        }
    }
    
    func updateViews(){
        guard let unwrappedMovie = movie else {return}
        MovieTitleLabel.text = unwrappedMovie.title
    }
    
    
    @IBOutlet weak var MovieTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
