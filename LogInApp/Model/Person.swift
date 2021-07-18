//
//  Person.swift
//  LogInApp
//
//  Created by Kovalyov Dmitry on 18.07.2021.
//

import Foundation

struct Person {
    
    var name = ""
    var surname = ""
    var age = 0
    
    var hobbyDetails: [String] = []
    
    var job = ""
    
    var education = ""
    var educationLevel = ""
    
    var city = ""
    
 
    static func definePerson() -> Person {
        var person = Person()
        person.name = BaseOfPersons.name
        person.surname = BaseOfPersons.dispatch.surname
        person.age = BaseOfPersons.dispatch.age
        person.job = BaseOfPersons.dispatch.currentJob
        person.hobbyDetails = BaseOfPersons.dispatch.hobby
        person.city = BaseOfPersons.dispatch.city
        person.education = BaseOfPersons.dispatch.education
        person.educationLevel = BaseOfPersons.dispatch.educationLevel

        return person
    }

}
