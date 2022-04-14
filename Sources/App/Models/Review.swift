//
//  File.swift
//  
//
//  Created by Артур Дохно on 14.04.2022.
//

import Vapor

struct Review: Content {
    let id_user: Int?
    let text: String?
    let id_comment: Int?
}

