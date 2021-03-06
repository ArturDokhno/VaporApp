//
//  File.swift
//  
//
//  Created by Артур Дохно on 14.04.2022.
//

import Vapor

class UserAreaController {
    
    func changeUserData(_ req: Request) throws -> EventLoopFuture<CommonResponse> {
        guard let body = try? req.content.decode(RegisterRequest.self) else {
            throw Abort(.badRequest)
        }
        let response = CommonResponse(result: 1, error_message: nil)
        
        return req.eventLoop.future(response)
    }
    
    func addReview(_ req: Request) throws -> EventLoopFuture<RegisterResponse> {
        guard let body = try? req.content.decode(Review.self) else {
            throw Abort(.badRequest)
        }
        let response = RegisterResponse(result: 1, user_message: "Ваш отзыв был передан на модерацию", error_message: nil)
        
        return req.eventLoop.future(response)
    }
    
    func deleteReview(_ req: Request) throws -> EventLoopFuture<CommonResponse> {
        guard let body = try? req.content.decode(Review.self) else {
            throw Abort(.badRequest)
        }
        guard let reviewId = body.id_comment,
              reviewId == 123 else {
            throw Abort(.badRequest)
        }
        let response = CommonResponse(result: 1, error_message: nil)
        return req.eventLoop.future(response)
    }
}
