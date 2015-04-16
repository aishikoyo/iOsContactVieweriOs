//
//  ContactsRepository.swift
//  ContactVieweriOs
//
//  Created by Ryan Trosvig on 4/15/15.
//  Copyright (c) 2015 Ryan Trosvig. All rights reserved.
//

// SAVE DATA TO NSJSONSerialization (Native JSON framework)

//        objects.insertObject(NSDate(), atIndex: 0)
//        let indexPath = NSIndexPath(forRow: 0, inSection: 0)
//        self.tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)

import Foundation

class ContactsRepository : NSObject
{
    
    class var sharedInstance: ContactsRepository {
        struct Static {
            static let instance: ContactsRepository = ContactsRepository()
        }
        return Static.instance
    }
    
    var contacts = [Contact]()
    
    override init()
    {
        //Create intial dumby list of contacts
        contacts.append(Contact(name: "a", phone: "123", title: "dude", email: "a@a.com", twitterId: "aman"))
        contacts.append(Contact(name: "b", phone: "456", title: "dudette", email: "b@b.com", twitterId: "bgirl"))
        contacts.append(Contact(name: "c", phone: "789", title: "dudelet", email: "c@c.com", twitterId: "ckid"))
    }
    
    func GetContacts() -> [Contact] {
        // Update from repository first
        self.UpdateIndices();
        return contacts
    }
    
    func UpdateExistingContact(contactObj:Contact, mId:Int)
    {
        contacts.removeAtIndex(mId)
        contacts.insert(contactObj, atIndex: mId)
        NSLog("Updated contact %d, total %d", mId, self.contacts.count)
    }
    
    func AddNewContact(contactObj:Contact)
    {
        contacts.append(contactObj)
        self.UpdateIndices()
        NSLog("Added new contact total %d", self.contacts.count)
    }
    
    func DeleteContact(mId:Int)
    {
        contacts.removeAtIndex(mId)
        self.UpdateIndices()
        NSLog("Deleted contact %d, total %d", mId, self.contacts.count)
    }
    
    func UpdateIndices()
    {
        for var i = 0; i < contacts.count; i++
        {
            contacts[i].setMyIndex(i)
        }
    }
    
    // Use this to access the local persistent storage
    //let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .
    //    UserDomainMask, true)[0] as NSString
    //let path = NSBundle.mainBundle().pathForResource("filename", ofType: "fileExt")
}