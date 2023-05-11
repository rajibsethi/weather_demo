//
//	WeatherData.swift
//  Created by Rajib Sethi on 10/05/23.

import Foundation

struct WeatherData : Codable {
	let main : Main?
	let name : String?
	let weather : [Weather]?
	let wind : Wind?


}
