//
//  EndPointType.swift
//  Receipe_App
//
//  Created by Jagadeesh Vinjam on 11/15/21.
//  Copyright © 2020 Jagadeesh Vinjam. All rights reserved.
//

import Foundation

public typealias Headers = [String : String]

public protocol EndPointType {
    var headers: Headers { get }
    var value: String { get }
    func url(params: Parameters?) -> URL
}
