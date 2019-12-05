//
//  File.swift
//  TableViewH.W.2.6
//
//  Created by Виктория Воробьева on 09/10/2019.
//  Copyright © 2019 Виктория Воробьева. All rights reserved.
//

import Foundation

struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
       
    var fullName: String {
        "\(name) \(surname)"
       }
       
    static func getContactList() -> [Person] {
           
        var persons: [Person] = []
           
        let names = DataManager.shared.listOfNames.shuffled()
        let surnames = DataManager.shared.listOfSurnames.shuffled()
        let emails = DataManager.shared.listOfEmail.shuffled()
        let phones = DataManager.shared.listOfPhoneNamber.shuffled()
           
        for index in 0..<names.count {
            let person = Person(name: names[index],
                                   surname: surnames[index],
                                   email: emails[index],
                                   phoneNumber: phones[index])
               
            persons.append(person)
        }
           
        return persons
    }
}
