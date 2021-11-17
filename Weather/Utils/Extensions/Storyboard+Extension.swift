//
//  Storyboard+Extension.swift
//  Weather
//
//  Created by Jagadeesh Vinjam on 11/15/21.
//

import UIKit

extension UIStoryboard {
    func loadVC<T: UIViewController>(_ type : T.Type) -> T? {
        return self.instantiateViewController(withIdentifier: T.description().className) as? T
    }
}
