//
//  Meme.swift
//  MemeOracle
//
//  Created by Иван Семикин on 14/07/2025.
//

import Foundation

struct APIResponse: Decodable {
    let success: Bool
    let data: MemeList
}

struct MemeList: Decodable {
    let memes: [Meme]
}

struct Meme: Decodable {
    let id: String
    let name: String
    let urlImage: String
    let width: Int
    let height: Int
    let boxCount: Int
    let captions: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case urlImage = "url"
        case width
        case height
        case boxCount = "box_count"
        case captions
    }
}
