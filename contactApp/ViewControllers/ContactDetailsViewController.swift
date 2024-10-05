//
//  ContactDetailsViewController.swift
//  contactApp
//
//  Created by Sasha on 5.10.24.
//

import UIKit

final class ContactDetailsViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        nameLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
        

    }
}
