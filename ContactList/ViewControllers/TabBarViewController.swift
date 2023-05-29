//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Матвей Авдеев on 26.05.2023.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let person = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let viewControllers = viewControllers else { return }
        
        for viewController in viewControllers {
            if let contactVC = viewController as? ContactListViewController {
                contactVC.person = person
            } else if let emailVC = viewController as? EmailTableViewController {
                emailVC.person = person
            }
        }
        
    }
}
