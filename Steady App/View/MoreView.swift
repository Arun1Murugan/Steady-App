//
//  MoreView.swift
//  Steady App
//
//  Created by Arun M on 18/04/25.
//

import SwiftUI

struct MoreView: View {
    
    @Binding var path: NavigationPath
    let advancedOptions: [AdvancedOptions] = [
        .init(title: "Clear All", id: 1),
        .init(title: "Reset", id: 2),
    ]
    
    var body: some View {
        VStack {
            List {
                Button("History") {
                    self.path.append(Route.history)
                }
                Button("Notes") {
                    self.path.append(Route.notes)
                }
                
                Section(header: Text("Advanced")) {
                    ForEach(self.advancedOptions, id: \.id) { option in
                        Button(option.title) {
                            self.path.append(Route.advanced(option.id))
                        }
                    }
                }
            }
        }
        .navigationTitle("More Options")
    }
}

#Preview {
    MoreView(path: .constant(.init()))
}
