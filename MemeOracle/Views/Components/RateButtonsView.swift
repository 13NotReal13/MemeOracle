//
//  RateButtonsView.swift
//  MemeOracle
//
//  Created by Иван Семикин on 17/07/2025.
//

import SwiftUI

struct RateButtonsView: View {
    @EnvironmentObject private var viewModel: HomeViewModel
    
    var body: some View {
        HStack {
            RateButtonView(type: .like, action: {} )
            
            RateButtonView(type: .disslike, action: viewModel.getRandomMeme)
        }
    }
}

enum RateType {
    case like
    case disslike
}

struct RateButtonView: View {
    let type: RateType
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(type == .like ? "👍🏻" : "👎🏻")
                .padding()
                .frame(width: 130)
                .background {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundStyle(type == .like ? .green : .red)
                }
        }
    }
}

#Preview {
    RateButtonsView()
        .environmentObject(HomeViewModel())
}

