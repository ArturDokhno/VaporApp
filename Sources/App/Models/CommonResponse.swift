//
//  CommonResponse.swift
//  
//
//  Created by Артур Дохно on 14.04.2022.
//

import Vapor

struct CommonResponse: Content {
    var result: Int
    var error_message: String?
}
