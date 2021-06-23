//
//  ContentView.swift
//  OnSubmitModifier
//
//  Created by ramil on 23.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {
    @State private var login = ""
    @State private var password = ""
    @State private var loggedIn = false
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    TextField("Login", text: $login)
                        .textFieldStyle(.roundedBorder)
                    TextField("Password", text: $password)
                        .textFieldStyle(.roundedBorder)
                    if loggedIn {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(Color.green)
                            Text("LOGGED IN!")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                    }
                }
                .frame(width: 300, height: 150)
                .onSubmit {
                    if !login.isEmpty && !password.isEmpty {
                        loggedIn = true
                    } else {
                        loggedIn = false
                    }
                }
            }
        }
    }
}

@available(iOS 15.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
