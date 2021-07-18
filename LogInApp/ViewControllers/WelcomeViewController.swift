//
//  WelcomeViewController.swift
//  LogInApp
//
//  Created by Kovalyov Dmitry on 18.07.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    var user = String()
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = """
Welcome, \(user)!
👋
"""
    }
    
    
}
