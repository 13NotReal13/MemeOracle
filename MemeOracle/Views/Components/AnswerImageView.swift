//
//  AnswerImageView.swift
//  MemeOracle
//
//  Created by Иван Семикин on 18/07/2025.
//

import SwiftUI

struct AnswerImageView: View {
    @EnvironmentObject private var viewModel: HomeViewModel
    
    var body: some View {
        if let meme = viewModel.answer {
            AsyncImage(url: URL(string: meme.urlImage)) { phase in
                switch phase {
                case .empty:
                    Spacer()
                        .background(ProgressView())
                case .success(let image):
                    VStack {
                        Spacer()
                        
                        image
                            .resizable()
                            .scaledToFit()
                        
                        Spacer()
                    }
                case .failure(_):
                    Image(systemName: "photo")
                @unknown default:
                    EmptyView()
                }
            }
        } else {
            Spacer()
        }
    }
}

#Preview {
    AnswerImageView()
        .environmentObject(HomeViewModel())
}
