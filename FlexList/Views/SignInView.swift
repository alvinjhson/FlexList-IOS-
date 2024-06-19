//
//  SignInView.swift
//  FlexList
//
//  Created by Alvin Johansson on 2024-06-19.
//

import Foundation
import Firebase
import SwiftUI
import UIKit

struct SignInView : View {
    @Binding var signedIn: Bool
    var auth = Auth.auth()
    @State var password: String = ""
    @State var email: String = ""
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                    Text("Email:")
                    TextEditor(text: $email)
                        .frame(height: 35)
                    Text("Password:")
                    TextEditor(text: $password)
                        .frame(height: 35)
                }
            .frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 20)
            Button(action: {
                auth.signIn(withEmail: email, password: password) { result, error in
                    if let error = error {
                        print("Error signing in: \(error)")
                    } else {
                        signedIn = true
                    }
                }
            }, label: {
                Text("Sign in")
            })
        }
        .onAppear {
            if Auth.auth().currentUser != nil {
                signedIn = true
            }
        }
    }
}

