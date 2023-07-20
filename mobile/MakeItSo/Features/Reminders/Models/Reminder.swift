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
  static let collectionName = "reminders"
}
