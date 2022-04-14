//
//  File.swift
//  
//
//  Created by Артур Дохно on 14.04.2022.
//

import Vapor

struct Product: Content {
    var id_product: Int
    var product_name: String
    var price: Int
}
