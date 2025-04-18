//
//  HomeView.swift
//  Steady App
//
//  Created by Arun M on 18/04/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = DailyCheckViewModel()
    @State private var currentTitleIndex = 0
    let titles = [
        "Steady 💪",
        "How are you today? 👋",
        "Take a breath 🧘",
        "You got this 🌱",
    ]

    var body: some View {
        ScrollView {
            
        }
        .navigationTitle(titles[currentTitleIndex])
        .onAppear {
            startTitleRotation()
        }
    }
}

#Preview {
    HomeView()
}


extension HomeView {
    private func startTitleRotation() {
        Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { _ in
            currentTitleIndex = (currentTitleIndex + 1) % titles.count
        }
    }
}
