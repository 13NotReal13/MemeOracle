//
//  APIManager.swift
//  MemeOracle
//
//  Created by Иван Семикин on 14/07/2025.
//

import Foundation

final class APIManager {
    let urlString = "https://api.imgflip.com/get_memes"
    
    func fetchMemes() async throws -> APIResponse {
        let url = URL(string: urlString)!
        
        let (data, _) = try await URLSession.shared.data(from: url)
        let response = try JSONDecoder().decode(APIResponse.self, from: data)
        print(response)
        
        return response
    }
}
