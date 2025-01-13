//
//  ModelImage.swift
//  Potok-9-3-1
//
//  Created by Doodesh on 12.01.2025.
//

import Foundation




struct ImageGenerationRequeset: Codable {
    let model: String
    let prompt: String
    let n: Int
    let size: String
}

struct ImageGenerationResponse: Codable {
    let data: [GeneratedImage]
}

struct GeneratedImage: Codable {
    let url: String
}
