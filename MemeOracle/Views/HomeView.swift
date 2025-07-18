//
//  HomeView.swift
//  MemeOracle
//
//  Created by Иван Семикин on 14/07/2025.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        VStack {
            QuestionBarView()
            
            AnswerImageView()

            RateButtonsView()
                .opacity(viewModel.answer == nil ? 0 : 1)
        }
        .environmentObject(viewModel)
        .task {
            await viewModel.getMemeList()
        }
    }
}

#Preview {
    HomeView()
}
