//
//  ViewController.swift
//  LogInApp
//
//  Created by Kovalyov Dmitry on 14.07.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var userPasswordTF: UITextField!
    
    private let user = "1"
    private let password = "1"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = user
    }
    
    @IBAction func showForgottenName() {
        showAlert(title: "Forgot your name?", message: "Your name is \(user)")
    }
    
    @IBAction func showForgottenPassword() {
        showAlert(title: "Forgot your password?", message: "Your password is \(password)")
    }
    
    @IBAction func loginButtonPushed() {
        if userNameTF.text != user || userPasswordTF.text != password {
            showAlert(title: "Invalid login or password!",
                      message: "Please, enter correct login and password.")
            userPasswordTF.text = nil
        } else {
            performSegue(withIdentifier: "ShowWelcomeVC", sender: nil)
        }
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        userNameTF.text = ""
        userPasswordTF.text = ""
    }
}


// MARK: - Extensions

extension LoginViewController {
    private func showAlert (title: String,
                            message: String) {
        
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        
        let okeyButton = UIAlertAction(title: "OK",
                                       style: .default)
        alert.addAction(okeyButton)
        present(alert, animated: true)
    }
}
