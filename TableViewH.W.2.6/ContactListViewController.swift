//
//  ContactListViewController.swift
//  TableViewH.W.2.6
//
//  Created by Виктория Воробьева on 04/10/2019.
//  Copyright © 2019 Виктория Воробьева. All rights reserved.
//

import UIKit

class ContactListViewController: UITableViewController {
              
    let persons = Person.getContactList()
              
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactList", for: indexPath)
        
        cell.textLabel?.text = persons[indexPath.row].fullName

        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "ShowDetails" else { return }
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! DetailsViewController
           
            detailVC.person = persons[indexPath.row]
        }
    }
}
