//
//  ViewController.swift
//  AutorizationPage
//
//  Created by Oxyenniu on 04.11.2022.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var nameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let login = "user"
    let password = "qwerty"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any? ) {
        guard let tabBarVC = segue.destination as?  UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        for viewController in viewControllers {
            if let welcomPageVC = viewController as? welcomePageViewController {
                welcomPageVC.welcomName = login
            } else if let firstVC = viewController as? FirstViewController {
                firstVC.welcomName = login
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInButtonTapped() {
        guard nameTF.text == login, passwordTF.text == password else {
            showAlert("Invalid login or password", "Please, enter correct login and password")
            return
        }
        performSegue(withIdentifier: "welcomPageVC", sender: nil)
    }
    
    @IBAction func forgotNameButtonTapped() {
        showAlert("Oops", "Your name is \(login)")
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        showAlert("Oops", "Your password is \(password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        nameTF.text = ""
        passwordTF.text = ""
    }
}

// MARK: UIAlertControllers

extension MainViewController {
    private func showAlert(_ title: String, _ message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default) { _ in textField?.text = "" }
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
}

