//
//  DetailsViewController.swift
//  TableViewH.W.2.6
//
//  Created by Виктория Воробьева on 07/10/2019.
//  Copyright © 2019 Виктория Воробьева. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet var contactLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
//    var contactName: String!
    var email: String!
    var phoneNamber: String!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailLabel.text = "Email:" + " " + email
        phoneLabel.text = "Phone:" + " " + phoneNamber
        
        if person != nil {
            self.contactLabel.text = person.name + " " + person.surname
      }
   }
}

//Значения уникальными сделать не получилось(
