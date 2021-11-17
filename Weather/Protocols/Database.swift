//
//  Database.swift
//  Weather
//
//  Created by Jagadeesh Vinjam on 11/15/21.
//

import Foundation
import CoreData

protocol Database {
    func loadAllBookMarks() -> [BookMarkModel]
    func save(_ bookMark: BookMarkModel)
    func delete(_ bookMark: BookMarkModel)
}
