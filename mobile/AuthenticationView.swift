//
//  AuthenticationView.swift
//  MakeItSo
//
//  Created by Negan on 22/07/2023.
//

import Combine
import SwiftUI

struct AuthenticationView: View {
    @StateObject var viewModel = AuthenticationViewModel()

    var body: some View {
        VStack {
            switch viewModel.flow {
            case .login:
                LoginView()
                    .environmentObject(viewModel)
            case .signUp:
                SignupView()
                    .environmentObject(viewModel)
            }
        }
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView()
    }
}
