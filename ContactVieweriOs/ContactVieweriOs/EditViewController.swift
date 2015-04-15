//
//  EditViewController.swift
//  ContactVieweriOs
//
//  Created by Ryan Trosvig on 4/11/15.
//  Copyright (c) 2015 Ryan Trosvig. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet weak var editDescriptionLabel: UILabel!
    
    var editItem: Contact? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
    
    func configureView() {
        // Update the user interface for the detail item.
        if let mContact: Contact = self.editItem {
            if let label = self.editDescriptionLabel {
                label.text = mContact.name
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
