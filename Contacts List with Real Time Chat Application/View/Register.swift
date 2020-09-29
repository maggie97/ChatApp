//
//  Register.swift
//  Contacts List with Real Time Chat Application
//
//  Created by maggie mendez on 28/09/20.
//

import SwiftUI
import Firebase

struct Register: View {
    @State private var emailAddress = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var firstname = ""
    @State private var lastname = ""
    @State private var contactNumber = ""
    @State private var birthDate = Date()
    
    @State private var selection: String? = nil
    @State private var authenticated: Bool = false
    
    @State private var full: Bool = false
    @State private var confirmedPassword: Bool = false
    
    var body: some View {
        ZStack {
            ScrollView {
                HStack {
                    Text("Register")
                        .padding()
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
                
                TextField("First Name", text: $firstname)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                
                TextField("Last Name", text: $lastname)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                
                TextField("Email", text: $emailAddress)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                
                SecureField("Confirm password", text: $confirmPassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                
                DatePicker("Birthday",selection: $birthDate,  displayedComponents: .date)
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                
                TextField("Contact number", text: $contactNumber)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                
                NavigationLink("", destination: ContactsList(), tag: "Authentication", selection: $selection).hidden()
                
                Button("Register") {
                    guard emailAddress != "", password != "", lastname != "", firstname != "", emailAddress != "",
                          password != "", confirmPassword != "", contactNumber != "" else { return }
                    Authentication.instance.register(User(firstName: firstname, lastName: lastname, email: emailAddress, contactNumber: contactNumber, birthday: birthDate, avatarImage: ""), password: password){
                        selection = "Authentication"
                    }
                    
                }
                .padding(.all, 13)
                .background(Color(red: 0.2, green: 0.5, blue: 0.5))
                .foregroundColor(.white)
                .cornerRadius(5.0)
                
                
            }.navigationBarHidden(true)
        }
    }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
