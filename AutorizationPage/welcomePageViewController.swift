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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(welcomName ?? "")"
    }
    
    @IBAction func logOutButtonTapped() {
        welcomName = ""
    }
    


}
