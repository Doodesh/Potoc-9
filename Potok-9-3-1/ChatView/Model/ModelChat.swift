//
//  Model.swift
//  Potok-9-3-1
//
//  Created by DOODESH . on 04.01.2025.
//

import Foundation

struct AIRequestBody: Codable {
    let model: String
    let messages: [Message]
}

struct Message: Codable {
    let role: String
    let content: String
}

struct APIResponse: Codable {
    let choices: [Choice]
}

struct Choice: Codable {
    let message: Message
}




