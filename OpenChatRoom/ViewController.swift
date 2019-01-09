//
//  ViewController.swift
//  OpenChatRoom
//
//  Created by Matthew Harrilal on 1/8/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import UIKit
import SocketIO

class ViewController: UIViewController {
    let chatRoom = ChatRoom()

    @IBAction func sendMessageButton(_ sender: Any) {
        chatRoom.sendMessage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        chatRoom.sendMessage()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        chatRoom.emittedEvents()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

