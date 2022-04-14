//
//  LoginResponse.swift
//  
//
//  Created by Артур Дохно on 14.04.2022.
//

import Vapor

struct LoginResponse: Content {
    var result: Int
    var user: User?
    var error_message: String?
}
