//
//  User.swift
//  Contacts List with Real Time Chat Application
//
//  Created by maggie mendez on 28/09/20.
//

import Foundation

struct User: Codable, Identifiable{
    var id: String = UUID().uuidString
    let firstName: String
    let lastName: String
    let email: String
    let contactNumber: String
    let birthday: Date
    
    let avatarImage: String
    
    enum CodingKeys: String, CodingKey{
        case firstName, lastName, email, contactNumber, birthday,avatarImage
    }
}
