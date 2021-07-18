//
//  Person.swift
//  LogInApp
//
//  Created by Kovalyov Dmitry on 18.07.2021.
//

import Foundation

struct Person {
    
    
    var name: String
    var surname: String
    var age: Int
    
    var hobbyDetails: [String]
    
    var job: String
    
    var city: String

    
    static func definePerson() -> Person {
        var person: Person
        person.name = BaseOfPersons.dispatch.name
        person.surname = BaseOfPersons.dispatch.surname
        person.age = BaseOfPersons.dispatch.age
        person.job = BaseOfPersons.dispatch.currentJob
        person.hobbyDetails = BaseOfPersons.dispatch.hobby
        person.city = BaseOfPersons.dispatch.city
        
        return person
    }
    
}
