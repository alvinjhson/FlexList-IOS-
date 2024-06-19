//
//  ContentView.swift
//  FlexList
//
//  Created by Alvin Johansson on 2024-06-16.
//

import SwiftUI

struct ContentView: View {
        @State var signedIn = false
        var body: some View {
            if !signedIn{
                SignInView(signedIn: $signedIn)
    
            }else{
                HomeView()
            }
    
    
        }
}

#Preview {
    ContentView()
}
