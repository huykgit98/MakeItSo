//
//  AuthenticationService+Injection.swift
//  MakeItSo
//
//  Created by Negan on 22/07/2023.
//

import Factory
import Foundation

public extension Container {
    var authenticationService: Factory<AuthenticationService> {
        self {
            AuthenticationService()
        }.singleton
    }
}
