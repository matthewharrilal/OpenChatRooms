//
//  chatRoom.swift
//  OpenChatRoom
//
//  Created by Matthew Harrilal on 1/8/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import Foundation
import SocketIO

class ChatRoom: NSObject {
    
    static let manager = SocketManager(socketURL: URL(string: "http://localhost:4000/")!, config: [.log(true), .compress])
    private var socket = manager.defaultSocket
    
    override init() {
        socket.connect()
    }
    
    func emittedEvents() {
        socket.on(clientEvent: .connect) {data, ack in
            print("socket connected")
        }
        
    }
    
    
}
