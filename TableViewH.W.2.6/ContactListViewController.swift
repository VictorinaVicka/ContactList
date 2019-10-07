//
//  ContactListViewController.swift
//  TableViewH.W.2.6
//
//  Created by Виктория Воробьева on 04/10/2019.
//  Copyright © 2019 Виктория Воробьева. All rights reserved.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    let listOfNames = ["Tom",
                       "Anna",
                       "Olga",
                       "Igor"]
    let listOfSurnames = ["Ivanov",
                          "Petrov",
                          "Sidorov",
                          "Vorobev"]
    var listOfEmail = ["ttt@om.ru",
                       "aan@na.ru",
                       "oool@ga.ru",
                       "iiiig@or.ru"]
    var listOfPhoneNamber = ["111-111",
                             "222-222",
                             "333-333",
                             "444-444"]
              
    var namesAndSurnames: [Person] = []
              
    private func contactSheetCollection() {
        for _ in 1...4 {
            if !listOfNames.isEmpty && !listOfSurnames.isEmpty {
                let nameAndSurname = Person (name: listOfNames.randomElement()!,
                                             surname: listOfSurnames.randomElement()!)
                          
                namesAndSurnames.append(nameAndSurname)
            }
        }
    }
    
    override func viewDidLoad() {
           super.viewDidLoad()
           contactSheetCollection()
       }
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namesAndSurnames.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactList", for: indexPath)
        let namesAndSurnames: Person = self.namesAndSurnames[indexPath.row]
        
        cell.textLabel?.text = namesAndSurnames.name + " " + namesAndSurnames.surname

        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let person = self.namesAndSurnames[indexPath.row]
            let detailVC = segue.destination as! DetailsViewController
           
            detailVC.person = person
            detailVC.email = listOfEmail[indexPath.row]
            detailVC.phoneNamber = listOfPhoneNamber[indexPath.row]
        }
    }
}

   struct Person {
              var name = ""
              var surname = ""
              
              init() {}
              
              init(name: String, surname: String) {
                  self.name = name
                  self.surname = surname
              }
      }
