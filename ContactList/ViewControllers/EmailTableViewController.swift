//
//  EmailTableViewController.swift
//  ContactList
//
//  Created by Матвей Авдеев on 26.05.2023.
//

import UIKit

final class EmailTableViewController: UITableViewController {
    
    var person: Person!
}

// MARK: - Table view data source

extension EmailTableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        9
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "email", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = "📱 \(person.phoneNumber[indexPath.section])"
            
        } else {
            content.text = "✉️ \(person.email[indexPath.section])"
        }
        
        
        cell.contentConfiguration = content
        return cell
    }
    
}

// MARK: - Table view delegate

extension EmailTableViewController {
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(person.names[section]) \(person.surnames[section])"
    }
}
