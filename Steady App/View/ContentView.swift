//
//  ContentView.swift
//  Steady App
//
//  Created by Arun M on 18/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            HomeView()
                .toolbar(content: {
                    Button(action: {
                        path.append(Route.more)
                    }, label: {
                        imageView
                    })
                })
                .navigationDestination(for: Route.self) { value in
                    switch value {
                    case .more:
                        MoreView(path: $path)
                    case .history:
                        HistoryView()
                    case .notes:
                        Text("Notes")
                    case .advanced(let id):
                        Text("\(id)")
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}

extension ContentView {
    private var imageView: some View {
        Image(systemName: "circle.grid.2x2.fill")
            .renderingMode(.template)
            .resizable()
            .foregroundStyle(Color.gray)
            .scaledToFit()
            .frame(width: 30, height: 30, alignment: .center)
    }
}
