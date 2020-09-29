//
//  ContentView.swift
//  Contacts List with Real Time Chat Application
//
//  Created by maggie mendez on 28/09/20.
//

import SwiftUI

struct Login: View {
    @State private var emailAddress = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            
            VStack {
                Logo()
                HStack {
                    Text("Login")
                        .padding()
                }
                TextField("email@icloud.com", text: $emailAddress)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                SecureField("enter password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Forgot password") {
                }
                .padding(.all, 5)
                .foregroundColor(.gray)
                
                Button("Login") {
                    
                    
                }
                .padding(.all, 13)
                .background(Color(red: 0.2, green: 0.5, blue: 0.5))
                .foregroundColor(.white)
                .cornerRadius(5.0)
                
                Button("Register") {
                    
                    
                }
                .padding(.all, 13)
                .background(Color(red: 0.2, green: 0.5, blue: 0.5))
                .foregroundColor(.white)
                .cornerRadius(5.0)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}

