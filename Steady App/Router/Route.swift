//
//  Route.swift
//  Steady App
//
//  Created by Arun M on 18/04/25.
//

import Foundation

enum Route: Hashable {
    case more
    case history
    case notes
    case advanced(_ id: Int)
}
