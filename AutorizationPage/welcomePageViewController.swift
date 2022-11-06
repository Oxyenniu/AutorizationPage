//
//  welcomePageViewController.swift
//  AutorizationPage
//
//  Created by Oxyenniu on 06.11.2022.
//

import UIKit

class welcomePageViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomName: String!
    
    var nameTF: String!
    var passwordTF: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcomName
    
    }
    
    @IBAction func logOutButtonTapped() {
        dismiss(animated: true)
        welcomName = ""
    }
    


}
