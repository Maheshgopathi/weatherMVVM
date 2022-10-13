//
//  ContentView.swift
//  weatherapp
//
//  Created by Gopathi Mahesh on 13/10/22.
//

import SwiftUI

struct ContentView: View {
    
@ ObservedObject var cityVM = cityviewmodel()
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            VStack(spacing: 0){
                MenuHeaderview(cityVM: cityVM)
                ScrollView(showsIndicators: false) {
                    cityView(cityVM: cityVM)
                }.padding(.top,10)
                
            }.padding(.top, 40)
        }.background(LinearGradient(gradient: Gradient(colors: [Color.white,.blue]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .edgesIgnoringSafeArea(.all)
        
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
