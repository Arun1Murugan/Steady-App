//
//  ChecklistCardView.swift
//  Steady App
//
//  Created by Arun M on 18/04/25.
//

import SwiftUI

struct ChecklistCardView: View {
    let title: String
    @Binding var items: [CheckItem]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title).font(.headline)
            
            ForEach($items) { $item in
                Toggle(item.title, isOn: $item.isDone)
            }
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(16)
    }
}

#Preview {
    ChecklistCardView(title: "Title", items: .constant([]))
}
