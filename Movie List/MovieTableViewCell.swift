//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by ronald huston jr on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var hasSeenButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    @IBAction func hasSeenButtonTapped(_ sender: Any) {
        let unseenTitle = "unseen"
        let seenTitle = "seen"
        hasSeenButton.setTitle(seenTitle, for: .normal)
        print(hasSeenButton.titleLabel?.text as Any)
        if let buttonText = hasSeenButton.titleLabel?.text {
            if buttonText == "seen" {
                hasSeenButton.setTitle(unseenTitle, for: .normal)
            }
        }
    }
    
}
