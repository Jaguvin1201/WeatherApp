//
//  Errors.swift
//  Weather
//
//  Created by Jagadeesh Vinjam on 11/15/21.
//

import Foundation

enum NetworkError: Error {
    case InvalidResponse
    case BadRequest
}

enum LocationError: Error {
    case unableToReverseGeoCode
}
