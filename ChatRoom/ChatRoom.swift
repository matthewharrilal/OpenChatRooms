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
    private var socket = manager.defaultSocket // Singleton instance  one socket connection per phone
    
//    static var roomName = ""
    
    override init() {
        socket.connect() // When you instantiate the chat room the socket connects to the server
    }
    
    
    func emittedEvents() {
        socket.on(clientEvent: .connect) {data, ack in
            print(data)
            print("socket connected")
        }
        
        
        socket.on(clientEvent: .disconnect) { (data, ack) in
            print("This is the disconnect data \(data)")
        }
        
        socket.on("chat message") { (data, ack) in
            print("CHAT DATA \(data)")
        }
    }
    
    func sendMessage() { // Has to conect first so triggering message isn't the first thing that occurs
        self.socket.emit("chat message", "Part Deux!") // Make the messages dynamic in this portion
    }
    
    func joinRoom(roomName: String) {
        self.socket.emit("joinRoom", roomName) // Join pre-exisiting chat room with given name being sent to server
    }
    
    func createRoom(roomName: String) {
        self.socket.emit("createRoom", roomName) // Create room and send to the server the given name
    }
    
    func leaveRoom(roomName:String) {
        self.socket.emit("leaveRoom", roomName) // Leave the specified room that the user is in
    }
    
}
