//
//  Message.swift
//  breakpoint
//
//  Created by Yunus Emre ARSLAN on 15.03.2020.
//  Copyright © 2020 Yunus Emre ARSLAN. All rights reserved.
//

import Foundation

class Message {
    private var _content:String
    private var _senderId:String
    
    var content: String {
        return _content
    }
    
    var senderId: String {
        return _senderId
    }
    
    init(content:String,senderId:String) {
        self._content = content
        self._senderId = senderId
    }
}
