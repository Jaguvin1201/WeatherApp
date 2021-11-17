//
//  LocationHelper.swift
//  Weather
//
//  Created by Jagadeesh Vinjam on 11/15/21.
//

import Foundation
import CoreLocation

extension CLLocation {
    func getCityName(completion: @escaping (Result<String, Error>) -> Void) {
        CLGeocoder().reverseGeocodeLocation(self) { placeMarks, error in
            if let error = error  {
                completion(.failure(error))
                return
            }
            guard let city = placeMarks?.last?.locality else {
                completion(.failure(LocationError.unableToReverseGeoCode))
                return
            }
            completion(.success(city))
        }
    }
}
