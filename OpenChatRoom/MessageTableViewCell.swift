//
//  MessageTableViewCell.swift
//  OpenChatRoom
//
//  Created by Matthew Harrilal on 1/14/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import Foundation
import UIKit

enum MessageSender {
    case ourself
    case someoneElse
}


class MessageTableViewCell: UITableViewCell {
    var messageSender: MessageSender = .ourself
    var messageLabel = UILabel()
    var nameLabel = UILabel()
    
    func apply(message: Message) {
        nameLabel.text = message.senderUsername
        messageLabel.text = message.message
        messageSender = message.messageSender
        setNeedsLayout() // MARK: TODO What does setNeedsLayout do?
    }
}
