//
//  GoogleSignInButton.swift
//  MakeItSo
//
//  Created by Negan on 22/07/2023.
//

import SwiftUI

enum GoogleSignInButtonLabel: String {
    case signIn = "Sign in with Google"
    case `continue` = "Continue with Google"
    case signUp = "Sign up with Google"
}

struct GoogleSignInButton: View {
    @Environment(\.colorScheme)
    private var colorScheme

    var label = GoogleSignInButtonLabel.continue
    var action: () -> Void

    init(_ label: GoogleSignInButtonLabel = .continue, action: @escaping () -> Void) {
        self.label = label
        self.action = action
    }

    var body: some View {
        Button(action: action) {
            HStack(spacing: 2) {
                Image("Google")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, alignment: .center)
                Text(label.rawValue)
                    .bold()
                    .padding(.vertical, 8)
            }
            .frame(maxWidth: .infinity)
        }
        .foregroundColor(colorScheme == .dark ? .black : .white)
        .background(colorScheme == .dark ? .white : .black)
        .cornerRadius(8)
        .buttonStyle(.bordered)
    }
}

struct GoogleSignInButton_Previews: PreviewProvider {
    static var previews: some View {
        GoogleSignInButton {
            print("User clicked on sign in")
        }
    }
}
