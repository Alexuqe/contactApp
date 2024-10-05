//
//  AllContactsListViewController.swift
//  contactApp
//
//  Created by Sasha on 5.10.24.
//

import UIKit

final class AllContactsListViewController: UITableViewController {
    
    var allContacts: [Person]!

    override func numberOfSections(in tableView: UITableView) -> Int {
        allContacts.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let person = allContacts[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
            case 0 :
                content.text = person.email
                content.image = UIImage(systemName: "phone")
            default:
                content.text = person.phone
                content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        allContacts[section].fullName
    }

    override func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    ) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
