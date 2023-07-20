//
//  Repositories+Injection.swift
//  MakeItSo
//
//  Created by Negan on 20/07/2023.
//

import Foundation
import Factory

extension Container {
  public var remindersRepository: Factory<RemindersRepository> {
    self {
      RemindersRepository()
    }.singleton
  }
}
