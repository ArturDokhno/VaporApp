//
//  LoginRequest.swift
//  
//
//  Created by Артур Дохно on 14.04.2022.
//

import Vapor

struct LoginRequest: Content {
    var username: String
    var password: String
}
