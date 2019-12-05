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
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailLabel.text = "Email: \(person.email)"
        phoneLabel.text = "Phone: \(person.phoneNumber)"
      
        if person != nil {
            contactLabel.text = person.fullName
      }
   }
}


