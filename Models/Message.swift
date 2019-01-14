//
//  Message.swift
//  OpenChatRoom
//
//  Created by Matthew Harrilal on 1/14/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import Foundation


struct Message {
    let message: String
    let senderUsername: String
    let messageSender: String
    
    init(message: String, senderUsername: String, messageSender: String) {
        self.message = message
        self.senderUsername = senderUsername
        self.messageSender =  messageSender
    }
}
