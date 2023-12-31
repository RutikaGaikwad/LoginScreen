//
//  ContentView.swift
//  Loginform
//
//  Created by APPLE on 26/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false

    var body: some View {
        NavigationView {
            ZStack {
                Color.cyan
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
        
                
                VStack{
                    Text("Login Form")
                        .bold()
                        .font(.largeTitle)
                        .padding()
                    
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.gray.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.gray.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword ))
                    
                    Button("Login") {
                        AutheticateUser(username: username, password: password)
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.cyan)
                    .cornerRadius(10)
                    
                    
                    NavigationLink(destination: Text("You are logged in @\(username)"), isActive: $showingLoginScreen) {
                                           EmptyView()
                                       }

                }
            }.navigationBarHidden(true)
        }
    }
    
    func AutheticateUser(username: String, password: String) {
        if username.lowercased() == "shinchan2000" {
            wrongUsername = 0
            if password.lowercased() == "abc1212" {
                wrongPassword = 0
                showingLoginScreen = true
            }else {
                wrongPassword = 2
            }
            }else {
                wrongUsername = 2
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}
