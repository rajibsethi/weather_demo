//
//  RootController.swift
//  VirtusaWeather
//
//  Created by Rajib Sethi on 10/05/23.
//

import UIKit

final class RootController: Coordinator {
    var navigationController: UINavigationController
    
    var childCoordinators = [Coordinator]()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    
    func start() {
        let searchVC = SearchVC.loadFromNib()
        searchVC.coordinator = self
        navigationController.pushViewController(searchVC, animated: false)
    }
    
    func presentDetailFor(location: SearchResultModel) {
        let weatherDetailVC = WeatherDetailVC.loadFromNib()
        weatherDetailVC.setLocation(with: location)
        weatherDetailVC.coordinator = self
        navigationController.pushViewController(weatherDetailVC, animated: true)
    }
}
