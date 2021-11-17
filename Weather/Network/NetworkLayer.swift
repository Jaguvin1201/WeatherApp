//
//  ServiceAPI.swift
//  Receipe_App
//
//  Created by Jagadeesh Vinjam on 11/15/21.
//  Copyright © 2020 Jagadeesh Vinjam. All rights reserved.
//

import Foundation

protocol URLRequestExecutor {
    func execute(with url: URL, callback: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask?
}

extension URLSession: URLRequestExecutor {
    func execute(with url: URL, callback: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask? {
        let task = self.dataTask(with: url, completionHandler: callback)
        task.resume()
        return task
    }
}

class NetworkLayer: Requestable {
    
    let requestExecutor: URLRequestExecutor
    
    init(requestExecutor: URLRequestExecutor = URLSession.shared) {
        self.requestExecutor = requestExecutor
    }
    
    @discardableResult
    func responseData<T:Codable>(endPoint: EndPointType, params: Parameters?, completion: @escaping (Result<T, Error>) -> Void) -> URLSessionDataTask? {
        let url = endPoint.url(params: params)
        LOGGER.log(msg: url)
        return requestExecutor.execute(with: url) { data, URLResponse, error in
            DispatchQueue.main.async {
                guard let data = data  else {
                    completion(.failure(error ?? NetworkError.InvalidResponse))
                    return
                }
                do {
                    try completion(.success(data.decodeResponse()))
                } catch {
                    completion(.failure(error))
                }
            }
        }
    }
}
