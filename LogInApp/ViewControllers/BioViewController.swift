//
//  BioViewController.swift
//  LogInApp
//
//  Created by Kovalyov Dmitry on 18.07.2021.
//

import UIKit

class BioViewController: UIViewController {

    @IBOutlet weak var firstLineInfoLabel: UILabel!
    
    @IBOutlet weak var secondLineInfoLabel: UILabel!
    @IBOutlet weak var segments: UISegmentedControl!
    
    @IBOutlet weak var photo: UIImageView!
    
    let person = Person.definePerson()

    override func viewDidLoad() {
        super.viewDidLoad()
        firstLineInfoLabel.text = "Меня зовут \(person.name) \(person .surname)"
        
        secondLineInfoLabel.text = "Мне \(person.age) лет"
       
        photo.isHidden = true
    }
    
    
    @IBAction func segmentingInfo() {
        switch segments.selectedSegmentIndex {
        case 0:
            firstLineInfoLabel.text = "Меня зовут \(person.name) \(person .surname)"
            
            secondLineInfoLabel.text = "Мне \(person.age) лет"
            photo.isHidden = true

        case 1:
            firstLineInfoLabel.text = "Я живу в городе \(person.city)."
            secondLineInfoLabel.text = "И вот так я выгляжу..."
            photo.isHidden = false
        
        default:
            firstLineInfoLabel.text = "Здесь должна быть информация о пользователе"
            secondLineInfoLabel.text = "Поалуйста, проверьте заполненные поля"
        }
    }
    
   

}



//person.job = BaseOfPersons.dispatch.currentJob
//person.hobbyDetails = BaseOfPersons.dispatch.hobby
