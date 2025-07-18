//
//  HomeViewModel.swift
//  MemeOracle
//
//  Created by Иван Семикин on 17/07/2025.
//

import Foundation

@MainActor
final class HomeViewModel: ObservableObject {
    @Published var question = ""
    @Published var answer: Meme?
    
    @Published private var memeList: [Meme] = []
    
    func getMemeList() async {
        do {
            memeList = try await APIManager().fetchMemes().data.memes
        } catch {
            print("Error")
        }
    }
    
    func getRandomMeme() {
        answer = memeList.randomElement()
    }
}
