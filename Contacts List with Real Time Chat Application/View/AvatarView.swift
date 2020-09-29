//
//  AvatarView.swift
//  Contacts List with Real Time Chat Application
//
//  Created by maggie mendez on 28/09/20.
//

import SwiftUI

struct AvatarView: View{
    let image: String
    let size: CGFloat
    
    var body: some View{
        Image(image)
            .resizable()
            .frame(width: size, height: size)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white.opacity(0.5), lineWidth: 5))
    }
}

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView(image: "foto3", size: 70)
    }
}
