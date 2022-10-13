//
//  API+extension.swift
//  weatherapp
//
//  Created by Gopathi Mahesh on 13/10/22.
//

import Foundation

extension API {
    
   static let baseURLString = "https://api.openweathermap.org/data/2.5/"
    
    static func getURLFor(lat: Double, long: Double) -> String{
        return "\(baseURLString)onecall?lat=\(lat)&long=\(long)&exclude=minutely&appid=\(key)&units=imperial"
    }
}
