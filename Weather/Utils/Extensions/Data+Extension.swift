//
//  JSONDecoder+Extension.swift
//  Weather
//
//  Created by Jagadeesh Vinjam on 11/15/21.
//

import Foundation

extension Data {
    func decodeResponse<T: Decodable>() throws -> T {
        LOGGER.log(data: self)
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: self)
    }
}
