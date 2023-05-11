//
//  Coordinator.swift
//  VirtusaWeather
//
//  Created by Rajib Sethi on 10/05/23.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    var childCoordinators: [Coordinator] { get set }
    
    func start()
}
