//
//  HourlyWeatherview.swift
//  weatherapp
//
//  Created by Gopathi Mahesh on 13/10/22.
//

import SwiftUI

struct HourlyWeatherview: View {
    
    @ObservedObject var cityVM: cityviewmodel
    

    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 20) {
            ForEach(cityVM.weather.hourly) { Weather in
                let icon = cityVM.getWeatherLocation(icon: Weather.weather.count > 0  ? Weather.weather[0].icon: "sun.max.fill")
                let hour = cityVM.getTempFor(temp: Double(Weather.dt))
                let temp = cityVM.getTempFor(temp: Weather.temp)
                getHourlyView(hour: hour, image: icon, temp: temp)
                
            }
        }
    }
}

    private func getHourlyView(hour: String, image: Image, temp: String) -> some View {
        VStack(spacing: 20) {
            Text(hour)
            image
                .foregroundColor(.yellow)
            Text(temp)
        }
        .foregroundColor(.white)
        .padding()
        .background(RoundedRectangle(cornerRadius: 5).fill(LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.5), Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)))
        .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)
        
    }



}

struct HourlyWeatherview_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
        
    }
}


