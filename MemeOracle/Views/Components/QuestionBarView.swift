//
//  QuestionBarView.swift
//  MemeOracle
//
//  Created by Иван Семикин on 14/07/2025.
//

import SwiftUI

struct QuestionBarView: View {
    @EnvironmentObject private var viewModel: HomeViewModel
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(.gray)
                
                TextField("Ask a question", text: $viewModel.question)
            }
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundStyle(.gray.opacity(0.1))
            }
            .padding()
            
            Button {
                viewModel.getRandomMeme()
            } label: {
                Text("Get a Prediction")
                    .foregroundStyle(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundStyle(viewModel.question.isEmpty ? .gray : .cyan)
                    }
                    .padding(.horizontal)
            }
            .disabled(viewModel.question.isEmpty)
        }
    }
}

#Preview {
    QuestionBarView()
    .environmentObject(HomeViewModel())
}
