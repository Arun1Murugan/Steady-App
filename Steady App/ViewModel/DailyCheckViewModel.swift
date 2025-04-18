//
//  DailyCheckViewModel.swift
//  Steady App
//
//  Created by Arun M on 18/04/25.
//

import Foundation

class DailyCheckViewModel: ObservableObject {
    @Published var morning: [CheckItem] = [
        .init(title: "Breathe before screen"),
        .init(title: "Set intention"),
        .init(title: "1 small goal")
    ]

    @Published var midday: [CheckItem] = [
        .init(title: "1 hr offline"),
        .init(title: "Did something for myself"),
        .init(title: "Checked emotional trigger")
    ]

    @Published var evening: [CheckItem] = [
        .init(title: "1 proud moment"),
        .init(title: "Reflected on dependency"),
        .init(title: "Practiced gratitude")
    ]

    @Published var showReflection = false

    var progress: Double {
        let all = morning + midday + evening
        let completed = all.filter { $0.isDone }.count
        return Double(completed) / Double(all.count)
    }

    var currentDateString: String {
        Date().formatted(date: .long, time: .omitted)
    }

    func saveReflection(_ text: String) {
        // Save to CoreData or UserDefaults
        print("Saved reflection: \(text)")
        showReflection = false
    }
}
