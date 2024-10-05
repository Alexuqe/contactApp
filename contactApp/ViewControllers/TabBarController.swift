//
//  TabBarController.swift
//  contactApp
//
//  Created by Sasha on 5.10.24.
//

import UIKit

final class TabBarController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Contact List"
        
        let apperance = UITabBarAppearance()
        tabBar.standardAppearance = apperance
        tabBar.scrollEdgeAppearance = apperance
        
        tabBar.items?.first?.title = "Contacts"
        tabBar.items?.first?.image = UIImage(systemName: "person")
        
        tabBar.items?.last?.title = "All COntacts"
        tabBar.items?.last?.image = UIImage(systemName: "person")
        
        setupViewCpntrollers()
        
    }
    
    private func setupViewCpntrollers() {
        
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let allContactsVC = viewControllers?.last as? AllContactsListViewController else { return }
        
        let persons = Person.getPerson()
        
        contactListVC.contacts = persons
        allContactsVC.allContacts = persons
    }
}
