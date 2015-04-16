//
//  EditViewController.swift
//  ContactVieweriOs
//
//  Created by Ryan Trosvig on 4/11/15.
//  Copyright (c) 2015 Ryan Trosvig. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet weak var nameBox: UITextField!
    @IBOutlet weak var phoneBox: UITextField!
    @IBOutlet weak var titleBox: UITextField!
    @IBOutlet weak var emailBox: UITextField!
    @IBOutlet weak var twitterBox: UITextField!
    
    
    var editItem: Contact? {
        didSet {
            // Update the view.
            //self.configureView()
        }
    }
    
    var newContact: Bool? {
        didSet {
            // Set as a new contact.
            self.setAsNew()
        }
    }
    
    func setAsNew()
    {
        if (newContact == true){
        }
    }
    
    func configureView()
    {
        if let newItem: Bool = self.newContact
        {
            if(newItem)
            {
                self.nameBox.text = "Add New Values"
            }
            else
            {
                // Update the user interface for the detail item.
                if let mContact: Contact = self.editItem
                {
                    if let label = self.nameBox {
                        label.text = mContact.name
                    }
                    if let label = self.phoneBox {
                        label.text = mContact.phone
                    }
                    if let label = self.titleBox {
                    label.text = mContact.title
                        }
                    if let label = self.emailBox {
                        label.text = mContact.email
                    }
                    if let label = self.twitterBox {
                        label.text = mContact.twitterId
                    }
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveContact(sender: AnyObject)
    {
        // TODO save the new or updated contact
        if (newContact == true)
        {
            //Create a new contact
        }
        else
        {
            //Update the existing contact
        }
    }

    
    
    
    
}
