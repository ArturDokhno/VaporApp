//
//  User.swift
//  
//
//  Created by Артур Дохно on 14.04.2022.
//

import Vapor

struct User: Content {
    let id_user: Int
    let user_login: String
    let user_name: String
    let user_lastname: String
}
