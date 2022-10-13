//
//  CityNameview.swift
//  weatherapp
//
//  Created by Gopathi Mahesh on 13/10/22.
//

import SwiftUI

struct CityNameview: View {
    
    var city: String
    var date: String
    
    
    var body: some View {
        HStack {
            VStack(alignment: .center, spacing: 10) {
                Text(city)
                    .font(.title)
                    .bold()
                Text(date)
            } .foregroundColor(.white)
        }
    }
}

struct CityNameview_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
