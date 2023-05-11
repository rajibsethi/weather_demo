//
//  SearchModel.swift
//  VirtusaWeather
//
//  Created by Rajib Sethi on 10/05/23.
//

import Foundation

struct SearchResultModel: Codable {
    let name: String?
    let lat: Double?
    let lon: Double?
    let country: String?
    let state: String?
}
