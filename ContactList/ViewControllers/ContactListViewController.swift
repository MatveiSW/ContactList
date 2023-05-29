//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Матвей Авдеев on 26.05.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 60
        
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let additionalVC = segue.destination as? AdditionalDataViewController else { return }
        
        additionalVC.personName = person.names[indexPath.row]
        additionalVC.personSurname = person.surnames[indexPath.row]
        additionalVC.personEmail = person.email[indexPath.row]
        additionalVC.personPhoneNumber = person.phoneNumber[indexPath.row]
        
    }
    
    
}

// MARK: - Table view data source

extension ContactListViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.names.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactList", for: indexPath)
        
        let fullName = "👤 \(person.names[indexPath.row]) \(person.surnames[indexPath.row])"
        
        var content = cell.defaultContentConfiguration()
        
        content.text = fullName
        cell.contentConfiguration = content
        
        return cell
    }
}
