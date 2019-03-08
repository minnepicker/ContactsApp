//
//  ContactDetailViewController.swift
//  ContactsApp
//
//  Created by morse on 3/8/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class ContactDetailViewController: UIViewController {
    
    var contact: String?
    @IBOutlet weak var contactLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.contactLabel.text = contact
    }
}
