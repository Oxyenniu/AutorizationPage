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
    
    private let firstPallete = UIColor(
        red: 54/255,
        green: 2/255,
        blue: 132/255,
        alpha: 1
    )
    
    private let secondPallete = UIColor(
        red: 167/255,
        green: 234/255,
        blue: 32/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.VerticalGradientLayer(topColor: firstPallete, bottomColor: secondPallete)
        welcomeLabel.text = "Welcome, \(welcomName ?? "")"
    }
    
    @IBAction func logOutButtonTapped() {
        welcomName = ""
    }
}

// MARK: - Set background color
extension UIView {
    func VerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
