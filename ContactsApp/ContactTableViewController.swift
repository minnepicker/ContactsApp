//
//  ContactTableViewController.swift
//  ContactsApp
//
//  Created by morse on 3/8/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class ContactTableViewController: UITableViewController {
    
    let contactArray = ["Nellie", "Andrew", "Caleb", "Alan", "Rachel", "Julia", "Stephen", "Aaron"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let contact = contactArray[indexPath.row]

        cell.textLabel?.text = contact
        return cell
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            if let detailVC = segue.destination as? ContactDetailViewController,
                let indexPath = self.tableView.indexPathForSelectedRow?.row {
                let contact = self.contactArray[indexPath]
                
                detailVC.contact = contact
            }
        }
    }
}
