//
//  Reminder.swift
//  MakeItSo
//
//  Created by Negan on 19/07/2023.
//

import Foundation
import FirebaseFirestoreSwift


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
