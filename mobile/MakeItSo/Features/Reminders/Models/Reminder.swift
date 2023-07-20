//
//  Reminder.swift
//  MakeItSo
//
//  Created by Negan on 19/07/2023.
//

import FirebaseFirestoreSwift
import Foundation

struct Reminder: Identifiable, Codable {
    @DocumentID
    var id: String?
    var title: String
    var isCompleted = false
}

extension Reminder {
    static let samples = [
        Reminder(title: "Build sample app", isCompleted: true),
        Reminder(title: "Create tutorial"),
        Reminder(title: "???"),
        Reminder(title: "PROFIT!"),
    ]
}

extension Reminder {
    static let collectionName = "reminders"
}
