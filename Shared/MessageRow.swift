//
//  MessageRow.swift
//  QuickAGI
//
//  Created by Moody on 2023-04-14.
//

import SwiftUI

struct MessageRow: Identifiable {
    
    let id = UUID()
    
    var isInteractingWithChatGPT: Bool
    
    let sendImage: String
    let sendText: String
    
    let responseImage: String
    var responseText: String?
    
    var responseError: String?
    
}
