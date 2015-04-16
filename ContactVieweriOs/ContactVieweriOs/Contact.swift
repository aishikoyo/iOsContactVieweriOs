//
//  Contact.swift
//  ContactVieweriOs
//
//  Created by Ryan Trosvig on 4/11/15.
//  Copyright (c) 2015 Ryan Trosvig. All rights reserved.
//

import Foundation

class Contact: NSObject {
    var name:String
    var phone:String
    var title:String
    var email:String
    var twitterId:String
    var mId:Int = -1
    
    init(name:String, phone:String, title:String, email:String, twitterId:String) {
        self.name = name
        self.phone = phone
        self.title = title
        self.email = email
        self.twitterId = twitterId
    }
    
    func setMyIndex(index:Int)
    {
        self.mId = index
    }
    
}

