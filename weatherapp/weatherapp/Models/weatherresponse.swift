//
//  weatherresponse.swift
//  weatherapp
//
//  Created by Gopathi Mahesh on 13/10/22.
//

import Foundation

struct weatherresponse: Codable {
    
    var current: Weather
    var hourly: [Weather]
    var daily: [dailyweather]
    
    static func empty() -> weatherresponse {
        return weatherresponse(current: Weather(), hourly: [Weather](repeating: Weather(), count: 23), daily: [dailyweather](repeating: dailyweather(), count: 8))
    }
}
