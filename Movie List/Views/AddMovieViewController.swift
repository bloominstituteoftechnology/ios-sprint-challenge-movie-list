//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Joseph Rogers on 8/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasCreated(_ movie: Movies)
}

class AddMovieViewController: UIViewController {

 
    @IBOutlet weak var addMovieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addMovieTextField.delegate = self
    }
    
    @IBAction func saveTapped(_ sender: Any) {
        guard let name = addMovieTextField.text,
            !name.isEmpty else {return}
        
        var movieAdd = Movies(name: name)
        
        if let enteredText = addMovieTextField.text,
            !enteredText.isEmpty {
            movieAdd.name.append(enteredText)
        }
        delegate?.movieWasCreated(movieAdd)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}
extension AddMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text,
            !text.isEmpty {
            resignFirstResponder()
        }
        return false
}
}
