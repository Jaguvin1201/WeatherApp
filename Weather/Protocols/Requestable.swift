//
//  Requestable.swift
//  Receipe_App
//
//  Created by Jagadeesh Vinjam on 11/15/21.
//  Copyright © 2020 Jagadeesh Vinjam. All rights reserved.
//

import Foundation

public typealias Parameters = [String : Any]

protocol Requestable {
    
    @discardableResult
    func responseData<T:Codable>(endPoint: EndPointType, params: Parameters?, completion: @escaping (Result<T, Error>) -> Void) -> URLSessionDataTask?
}
