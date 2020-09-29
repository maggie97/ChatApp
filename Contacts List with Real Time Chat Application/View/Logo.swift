//
//  Logo.swift
//  Contacts List with Real Time Chat Application
//
//  Created by maggie mendez on 28/09/20.
//

import SwiftUI

struct Logo: View {
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
            //Spacer()
            Circle()
                //.padding(.horizontal)
                .foregroundColor(Color(red: 0.2, green: 0.5, blue: 0.5))
                .frame(minWidth: 20, idealWidth: 50, maxWidth: UIScreen.main.bounds.width/3, minHeight: 20, idealHeight: 50, maxHeight: UIScreen.main.bounds.height/4, alignment: .center)
            //Spacer()
        }
    }
}


struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        Logo()
    }
}
