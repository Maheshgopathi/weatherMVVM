//
//  MenuHeaderview.swift
//  weatherapp
//
//  Created by Gopathi Mahesh on 13/10/22.
//

import SwiftUI

struct MenuHeaderview: View {
    
    @ObservedObject var cityVM: cityviewmodel
    
    @State private var searchTerm = "INDIA WEATHER"
    
    var body: some View {
        HStack {
            TextField("", text: $searchTerm)
                .padding(.leading, 20)
            Button {
                cityVM.city = searchTerm
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                    
                    Image(systemName: "location.fill")
                }
            }
            .frame(width: 50, height: 50)
        }
        .foregroundColor(.white)
        .padding()
        .background(ZStack(alignment: .leading) {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.white)
                .padding(.leading, 10)
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue.opacity(0.5))
        })
        
    }
}

struct MenuHeaderview_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
