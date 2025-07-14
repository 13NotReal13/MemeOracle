//
//  HomeView.swift
//  MemeOracle
//
//  Created by Иван Семикин on 14/07/2025.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        VStack {
            QuestionBarView(searchText: $searchText, action: { print("") })
        }
    }
}

#Preview {
    HomeView()
}
