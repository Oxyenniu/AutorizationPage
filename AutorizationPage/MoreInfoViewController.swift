//
//  MoreInfoViewController.swift
//  AutorizationPage
//
//  Created by Oxyenniu on 09.11.2022.
//

import UIKit

class MoreInfoViewController: UIViewController {
    private let firstPallete = UIColor(
        red: 100/255,
        green: 130/255,
        blue: 160/255,
        alpha: 1
    )
    
    private let secondPallete = UIColor(
        red: 160/255,
        green: 130/255,
        blue: 100/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.thirdVerticalGradientLayer(topColor: firstPallete, bottomColor: secondPallete)
    }
    
    
}


// MARK: - Set background color
extension UIView {
    func thirdVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
