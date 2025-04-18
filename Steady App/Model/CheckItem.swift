//
//  CheckItem.swift
//  Steady App
//
//  Created by Arun M on 18/04/25.
//

import Foundation

struct CheckItem: Identifiable {
    let id = UUID()
    let title: String
    var isDone: Bool = false
}
