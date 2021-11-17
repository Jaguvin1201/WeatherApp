//
//  String+Extension.swift
//  Weather
//
//  Created by Jagadeesh Vinjam on 11/15/21.
//

import Foundation

extension String {
    var className:String {
        return self.components(separatedBy: ".").last!
    }
}
