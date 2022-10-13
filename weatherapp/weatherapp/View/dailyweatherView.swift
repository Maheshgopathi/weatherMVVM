//
//  dailyweatherView.swift
//  weatherapp
//
//  Created by Gopathi Mahesh on 13/10/22.
//

import SwiftUI

struct dailyweatherView: View {
    
    @ObservedObject var cityVM: cityviewmodel
    
    var body: some View {
        ForEach(cityVM.weather.daily) { Weather in
            LazyVStack {
                dailyCell(weather: Weather)
            }
            
        }
    }
    
    private func dailyCell(weather: dailyweather) -> some View {
        HStack {
            Text(cityVM.getdayFor(timestamp: weather.dt).uppercased())
                .frame(width: 50)
            
            Spacer()
            
            Text("\(cityVM.getTempFor(temp: weather.temp.max)) | \(cityVM.getTempFor(temp: weather.temp.min)) °F")
                .frame(width: 150)
            Spacer()
            cityVM.getWeatherLocation(icon: weather.weather.count > 0 ? weather.weather[0].icon : "sun.max.fill")
            
        }
        .foregroundColor(.white)
        .padding(.horizontal, 40)
        .padding(.vertical, 15)
        .background(RoundedRectangle(cornerRadius: 5).fill(LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.5), Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)))
        .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)
        
    }
    
}

struct dailyweatherView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
