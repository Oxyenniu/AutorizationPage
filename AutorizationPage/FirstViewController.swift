//
//  FirstViewController.swift
//  AutorizationPage
//
//  Created by Oxyenniu on 09.11.2022.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var welcomeUserLabel: UILabel!
    
    
    var welcomName: String!
    
    private let firstPallete = UIColor(
        red: 164/255,
        green: 200/255,
        blue: 80/255,
        alpha: 1
    )
    
    private let secondPallete = UIColor(
        red: 90/255,
        green: 54/255,
        blue: 190/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.VerticalGradientLayer(topColor: firstPallete, bottomColor: secondPallete)
        welcomeUserLabel.text = "My name is \(welcomName ?? "") and this my favorite countries"
    }
    
    
}


// MARK: - Set background color
extension UIView {
    func verticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
