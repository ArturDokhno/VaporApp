//
//  RegisterResponse.swift
//  
//
//  Created by Артур Дохно on 13.04.2022.
//

import Vapor

struct RegisterResponse: Content {
    var result: Int
    var user_message: String?
    var error_message: String?
}
