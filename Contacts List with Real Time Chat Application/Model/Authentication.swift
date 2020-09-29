//
//  Authentication.swift
//  Pods
//
//  Created by maggie mendez on 29/09/20.
//

import Foundation
import Firebase

import FirebaseCore
import FirebaseFirestore
//import FirebaseFirestoreSwift

class Authentication{
    static var instance = Authentication()
    var db: Firestore
    private init(){
        db = Firestore.firestore()
    }
    
    func register(_ user: User, password: String, onSuccessfull success: @escaping () -> Void){
        Auth.auth().createUser(withEmail: user.email , password: password) { [weak self] authResult, error in
            //guard let strongSelf = self else { return }
            guard authResult != nil else { return }
            success()
            print(authResult ?? "nananany ")
            
            do {
               // try db.collection("users").addDocument(data: user)
                print("Error writing city to Firestore: \(error)")
            }
        }
    }
    
    func singIn(_ email: String, _ password: String, onSuccessfull success: @escaping () -> Void){
        Auth.auth().signIn(withEmail: email , password: password) { [weak self] authResult, error in
            //guard let strongSelf = self else { return }
            guard authResult != nil else { return }
            success()
            print(authResult ?? "nananany ")
            
            do {
               // try db.collection("users").addDocument(data: user)
                print("Error writing city to Firestore: \(error)")
            }
        }
    }
}
