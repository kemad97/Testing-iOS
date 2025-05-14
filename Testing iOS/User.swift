//
//  User.swift
//  Testing iOS
//
//  Created by Kerolos on 14/05/2025.
//

import Foundation
struct User {
    var username: String
    var password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
    func authenticate() -> Bool {
        if username.count > 5 && password.count >= 6 {
            return true
        } else {
            return false
        }
    }
}
