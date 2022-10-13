//
//  weather.swift
//  weatherapp
//
//  Created by Gopathi Mahesh on 13/10/22.
//

import Foundation

class Weather: Codable, Identifiable {
    var dt: Int
    var temp: Double
    var feels_like: Double
    var pressue: Int
    var humidity: Int
    var dew_point: Double
    var clouds: Int
    var wind_speed: Double
    var wind_deg: Int
    var weather: [weatherDetail]
    
    enum codingKey: String {
        
        case dt
        case temp
        case feels_like
        case pressue
        case humidity
        case dew_point
        case clouds
        case wind_speed
        case wind_deg
        case weather
        
    }
    
    init() {
        
        dt = 0
        temp = 0.0
        feels_like = 0.0
        pressue = 0
        humidity = 0
        dew_point = 0.0
        clouds = 0
        wind_speed = 0.0
        wind_deg = 0
        weather = []
        
    }
}

extension Weather {
    var id: UUID {
        return UUID()
    }
}


