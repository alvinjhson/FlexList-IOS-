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

struct SignInView: View {
    @Binding var signedIn: Bool
    var auth = Auth.auth()
    @State var password: String = ""
    @State var email: String = ""
    
    var body: some View {
            ZStack {
                Color(UIColor.fromHex("E45E5E"))
                    .edgesIgnoringSafeArea(.all) // Ensure background color covers the entire screen

                VStack {
                    Spacer() // Push the white frame to the bottom

                    VStack {
                        VStack(alignment: .leading) {
                            TextField("Email", text: $email)
                                .padding(8) // Add padding inside the text field
                                .background(Color(UIColor.systemGray6)) // Background color for text field
                                .cornerRadius(40) // Rounded corners for the text field
                                .padding(.bottom, 10) // Space below the text field

                            SecureField("Password", text: $password)
                                .padding(8) // Add padding inside the text field
                                .background(Color(UIColor.systemGray6)) // Background color for text field
                                .cornerRadius(40) // Rounded corners for the text field
                                .padding(.bottom, 20) // Space below the text field
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 20)

                        Button(action: {
                            // Example sign-in logic
                            // Add your authentication logic here
                            signedIn = true
                        }, label: {
                            Text("Sign in")
                                .frame(maxWidth: .infinity) // Make button full width
                                .padding()
                                .background(Color(UIColor.fromHex("E45E5E"))) // Button background color
                                .foregroundColor(.white) // Button text color
                                .cornerRadius(40)
                        })
                        
                        .padding(.horizontal, 20)
                        Text("Forgot pasword?")
                            .padding(50)
                        Text("Don't have an account? Sign UP")

                    }
                    .padding(.top, 20) // Optional: Add padding to the top of the VStack
                    .frame(maxWidth: .infinity, maxHeight: .infinity) // Ensure it fills the available space
                    .background(Color.white) // Set the background color to white
                    .clipShape(RoundedCorners(topLeft: 20, topRight: 20, bottomLeft: 0, bottomRight: 0)) // Apply custom shape with only top corners rounded
                }
                .frame(height: UIScreen.main.bounds.height * 0.8) // Limit height to 70% of the screen
                .offset(y: UIScreen.main.bounds.height * 0.15) // Move the frame to cover the bottom 70%
            }
        }
}


