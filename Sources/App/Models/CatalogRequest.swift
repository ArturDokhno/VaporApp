//
//  File.swift
//  
//
//  Created by Артур Дохно on 14.04.2022.
//

import Vapor

struct CatalogRequest: Content {
    var page_number: Int
    var id_category: Int
}
