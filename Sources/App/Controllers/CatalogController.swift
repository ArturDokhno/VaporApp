//
//  File.swift
//  
//
//  Created by Артур Дохно on 14.04.2022.
//

import Vapor

class CatalogController {
    func getCatalog(_ req: Request) throws -> EventLoopFuture<[Product]> {
        guard let body = try? req.query.decode(CatalogRequest.self) else {
            throw Abort(.badRequest)
        }
        let response = [
            Product(id_product: 123, product_name: "iPhone", price: 100_000),
            Product(id_product: 456, product_name: "MacBook", price: 200_000)
        ]
        
        return req.eventLoop.future(response)
    }
    
    func getProduct(_ req: Request) throws -> EventLoopFuture<ProductDataResponse> {
        guard let body = try? req.query.decode(ProductRequest.self) else {
            throw Abort(.badRequest)
        }
        let response = ProductDataResponse(result: 1, product_name: "Название", product_price: 123, product_description: "Описание", error_message: nil)
        
        return req.eventLoop.future(response)
    }
    
    func getReviews(_ req: Request) throws -> EventLoopFuture<[Review]> {
        guard let body = try? req.query.decode(ReviewsRequest.self) else {
            throw Abort(.badRequest)
        }
        
        let response = [
            Review(id_user: Int.random(in: 1...99), text: "Текст отзыва о товаре \(body.id_product)", id_comment: nil),
            Review(id_user: Int.random(in: 1...99), text: "Текст отзыва о товаре \(body.id_product)", id_comment: nil),
            Review(id_user: Int.random(in: 1...99), text: "Текст отзыва о товаре \(body.id_product)", id_comment: nil)
        ]
        
        return req.eventLoop.future(response)
    }
}
