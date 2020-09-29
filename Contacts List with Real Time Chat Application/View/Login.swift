//
//  ContentView.swift
//  Contacts List with Real Time Chat Application
//
//  Created by maggie mendez on 28/09/20.
//

import SwiftUI
//import Firebase

struct Login: View {
    @State private var emailAddress = ""
    @State private var password = ""

    @State private var selection: String? = nil
    
    var body: some View {
        ZStack {
            NavigationView
            {
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
                    
                    NavigationLink("", destination: ContactsList(), tag: "Authentication", selection: $selection).hidden()
                    
                    Button("Login") {
                        Authentication.instance.singIn(emailAddress, password){
                            selection = "Authentication"
                        }
                    }
                    .padding(.all, 13)
                    .background(Color(red: 0.2, green: 0.5, blue: 0.5))
                    .foregroundColor(.white)
                    .cornerRadius(5.0)
                    
                    NavigationLink(destination: Register()){
                        Text("Register")
                    }
                    .padding(.all, 13)
                    .background(Color(red: 0.2, green: 0.5, blue: 0.5))
                    .foregroundColor(.white)
                    .cornerRadius(5.0)
                    
                }
            }
            .navigationBarHidden(true)
            //.hidden()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}

