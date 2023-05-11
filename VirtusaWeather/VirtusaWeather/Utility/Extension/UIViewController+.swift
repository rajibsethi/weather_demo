//
//  UIViewController+.swift
//  VirtusaWeather
//
//  Created by Rajib Sethi on 10/05/23.
//

import Foundation
import UIKit

extension UIViewController {
    static func loadFromNib() -> Self {
        func instantiateFromNib<T: UIViewController>() -> T {
            T(nibName: String(describing: T.self), bundle: nil)
        }

        return instantiateFromNib()
    }
}
