//
//  ContactListViewController.swift
//  contactApp
//
//  Created by Sasha on 5.10.24.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    var contacts: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.title = "Contacts"

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            
            guard let detailVC = segue.destination as? ContactDetailsViewController else { return }
            detailVC.person = contacts[indexPath.row]
        }
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let contact = contacts[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = contact.fullName
        content.secondaryText = contact.phone
        content.image = UIImage(systemName: "phone")
        
        cell.contentConfiguration = content
        return cell
    }

}


