//
//  RemindersRepository.swift
//  MakeItSo
//
//  Created by Negan on 20/07/2023.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

public class RemindersRepository: ObservableObject {
    
    @Published
    var reminders = [Reminder]()

    func addReminder(_ reminder: Reminder) throws {
        try Firestore
            .firestore()
            .collection("reminders")
            .addDocument(from: reminder)
        
    }
}
