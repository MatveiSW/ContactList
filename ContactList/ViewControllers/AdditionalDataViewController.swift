//
//  AdditionalDataViewController.swift
//  ContactList
//
//  Created by Матвей Авдеев on 26.05.2023.
//

import UIKit

class AdditionalDataViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
   
    var personName: String!
    var personSurname: String!
    var personEmail: String!
    var personPhoneNumber: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "\(personName ?? "") \(personSurname ?? "")"
        
        phoneLabel.text = "📱Phone:  \(personPhoneNumber ?? "")"
        emailLabel.text = "✉️ Email:  \(personEmail ?? "" )"
    }


}
