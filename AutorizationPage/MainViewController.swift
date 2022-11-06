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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any? ) {
        guard let welcomPageVC = segue.destination as?  welcomePageViewController else { return }
        welcomPageVC.welcomName = "Welcome, \((nameTF.text ?? ""))"
    }
    
    @IBAction func tapForHideKeyboard(_ sender: UITapGestureRecognizer) {
        nameTF.resignFirstResponder()
        passwordTF.resignFirstResponder()
    }
    
    @IBAction func logInButtonTapped() {
        if let inputNames = nameTF.text, inputNames != "user" {
            showAlert("Invalid login or password", "Please, enter correct login and password")
        }else if let inputPassword = passwordTF.text, inputPassword != "qwerty" {
            showAlert("Invalid login or password", "Please, enter correct login and password")
        }
    }
    
    @IBAction func forgotNameButtonTapped() {
        showAlert("Oops", "Your name is user")
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        showAlert("Oops", "Your password is qwerty")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as?  welcomePageViewController else { return }
        nameTF.text = ""
        passwordTF.text = ""
    }
}

// MARK: UIAlertControllers

extension MainViewController {
    private func showAlert(_ title: String, _ message: String) {
        let logInAlert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        logInAlert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {action in} ))
        present(logInAlert, animated: true)
    }
}

