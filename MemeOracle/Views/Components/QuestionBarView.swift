//
//  QuestionBarView.swift
//  MemeOracle
//
//  Created by Иван Семикин on 14/07/2025.
//

import SwiftUI

struct QuestionBarView: View {
    @Binding var searchText: String
    var action: () -> Void
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(.gray)
                
                TextField("Ask a question", text: $searchText)
            }
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundStyle(.gray.opacity(0.1))
            }
            .padding()
            
            Button {
                action()
            } label: {
                Text("Получить предсказание")
                    .foregroundStyle(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundStyle(.cyan)
                    }
                    .padding(.horizontal)
            }
        }
    }
}

#Preview {
    QuestionBarView(
        searchText: .constant(""),
        action: { print("") }
    )
}
