//
//  dailyweather.swift
//  weatherapp
//
//  Created by Gopathi Mahesh on 13/10/22.
//

import Foundation

struct dailyweather: Codable, Identifiable  {

    var dt: Int
    var temp: Temperature
    var weather: [weatherDetail]
    
    enum CodingKey: String {
    case dt
    case temp
    case weather
}
    
    
    init() {
        dt = 0
        temp = Temperature (min: 0.0, max: 0.0)
        weather = [weatherDetail(main: "", description: " ", icon: "")]
    }
    
}

extension dailyweather  {
    var id: UUID {
        return UUID()
    }
}
