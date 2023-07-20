//
//  RemindersListViewModel.swift
//  MakeItSo
//
//  Created by Negan on 19/07/2023.
//

import Foundation

class RemindersListViewModel: ObservableObject {
    @Published
    var reminders = Reminder.samples

    private var remindersRepository: RemindersRepository =  RemindersRepository()

    @Published
    var errorMessage: String?
    
    func addReminder(_ reminder: Reminder) {
        do{
          try  remindersRepository.addReminder(reminder)
            errorMessage = nil
        }
        catch{
            print(error)
              errorMessage = error.localizedDescription
        }
    }

    func toggleCompleted(_ reminder: Reminder) {
        if let index = reminders.firstIndex(where: { $0.id == reminder.id }) {
            reminders[index].isCompleted.toggle()
        }
    }
}
