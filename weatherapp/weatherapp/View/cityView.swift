//
//  cityView.swift
//  weatherapp
//
//  Created by Gopathi Mahesh on 13/10/22.
//

import SwiftUI

struct cityView: View {
    
    @ObservedObject var cityVM: cityviewmodel
    
    var body: some View {
        VStack {
            CityNameview(city: cityVM.city, date: cityVM.date)
                .shadow(radius: 0)
            TodayWeatherview(cityVM: cityVM)
                .padding()
            HourlyWeatherview(cityVM: cityVM)
            dailyweatherView(cityVM: cityVM)
        } .padding(.bottom, 30)
    }
}

struct cityView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
