//
//  ReflectionView.swift
//  Steady App
//
//  Created by Arun M on 18/04/25.
//

import SwiftUI

struct ReflectionView: View {
    @ObservedObject var viewModel: DailyCheckViewModel
    @State private var text = ""

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("What did you learn about yourself today?")
                    .font(.headline)

                TextEditor(text: $text)
                    .frame(height: 200)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray))

                Spacer()

                Button("Save") {
                    viewModel.saveReflection(text)
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
            .navigationTitle("Daily Reflection")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    ReflectionView(viewModel: DailyCheckViewModel())
}
