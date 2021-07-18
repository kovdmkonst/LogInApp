//
//  ActivityViewController.swift
//  LogInApp
//
//  Created by Kovalyov Dmitry on 19.07.2021.
//

import UIKit

class ActivityViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var slider: UISlider!
    
    let person = Person.definePerson()
    var numberOfHobby = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = "У меня \(person.educationLevel) образование. Специальность - \(person.education)"
        image.image = UIImage(named:"jures")
    }
    
    @IBAction func showActivity() {
        switch slider.value {
        case 0...0.3:
            mainLabel.text = "У меня \(person.educationLevel) образование. Специальность - \(person.education)"
            image.image = UIImage(named:"jures")
        case 0.31...0.65:
            mainLabel.text = "Я работаю в должности: \(person.job)"
            image.image = UIImage(named:"kdn")
        default:
            image.image = UIImage(named:"hobby")
            mainLabel.text = """
Мои хобби:
            \(person.hobbyDetails[0]),
            \(person.hobbyDetails[1]),
            \(person.hobbyDetails[2])
"""
        }
    }
}
