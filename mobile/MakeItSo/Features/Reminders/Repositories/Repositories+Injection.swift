//
//  Repositories+Injection.swift
//  MakeItSo
//
//  Created by Negan on 20/07/2023.
//

import Factory
import Foundation

public extension Container {
    var remindersRepository: Factory<RemindersRepository> {
        self {
            RemindersRepository()
        }.singleton
    }
}
