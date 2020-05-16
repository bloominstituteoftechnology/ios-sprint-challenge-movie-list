//
//  AddNewMovieViewController.swift
//  Movie List
//
//  Created by Bryan Cress on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasCreated(movie: Movie)
}


class AddNewMovieViewController: UIViewController {
    
    @IBOutlet weak var movieTextField: UITextField!
   
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
 }
    
    @IBAction func SaveMovieButton(_ sender: Any) {
        
        guard let name = movieTextField.text else { return }
    
        let movie = Movie(name: name)
    
        delegate?.movieWasCreated(movie: movie)
        dismiss(animated: true, completion: nil)
 }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func Cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
}
