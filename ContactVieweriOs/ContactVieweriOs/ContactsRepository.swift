//
//  ContactsRepository.swift
//  ContactVieweriOs
//
//  Created by Ryan Trosvig on 4/15/15.
//  Copyright (c) 2015 Ryan Trosvig. All rights reserved.
//

import Foundation

class ContactsRepository: NSObject {
    
    var contacts = [Contact]()

    override init()
    {
        //Create intial dumby list of contacts
        contacts.append(Contact(name: "a", phone: "123", title: "dude", email: "a@a.com", twitterId: "aman"))
        contacts.append(Contact(name: "b", phone: "456", title: "dudette", email: "b@b.com", twitterId: "bgirl"))
        contacts.append(Contact(name: "c", phone: "789", title: "dudelet", email: "c@c.com", twitterId: "ckid"))
    }
    
    /*GetContacts()
    {
        return contacts
    }
    
    
    UpdateExistingContact(Contact: mContact, int mId)
    {
    
    }*/
    
    // Use this to access the local persistent storage
    //let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .
    //    UserDomainMask, true)[0] as NSString
    //let path = NSBundle.mainBundle().pathForResource("filename", ofType: "fileExt")
}