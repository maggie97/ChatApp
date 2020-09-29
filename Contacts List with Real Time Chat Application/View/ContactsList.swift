//
//  ContactsList.swift
//  Contacts List with Real Time Chat Application
//
//  Created by maggie mendez on 28/09/20.
//

import SwiftUI

struct ContactsList: View {
    var body: some View {
        HStack {
            List(0 ..< 5){ item in
                Contacts(imageString: "foto3")
            }
        }.navigationBarTitle("Contactos")
        .navigationBarHidden(true)
    }
}

struct Contacts: View {
    let imageString: String
    var body: some View {
            HStack{
                AvatarView(image: imageString, size: 70)
                VStack (alignment: .leading) {
                    Text("Last Name Friend").bold()
                    Text("First Name")
                    Text("Email")
                }
            }
    }
}

struct ContactsList_Previews: PreviewProvider {
    static var previews: some View {
        ContactsList()
    }
}
