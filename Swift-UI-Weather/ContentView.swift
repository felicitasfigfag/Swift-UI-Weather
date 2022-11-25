//
//  ContentView.swift
//  Swift-UI-Weather
//
//  Created by Felicitas Figueroa Fagalde on 25.11.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 8){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("66°")
                        .font(.system(size: 70, weight: .medium, design: .default))
                        .foregroundColor(.white)
                }
                Spacer()
                
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "Tue", imageName: "sun.max.fill", temperature: 66)
                    WeatherDayView(dayOfWeek: "Wed", imageName: "wind", temperature: 45)
                    WeatherDayView(dayOfWeek: "Thu", imageName: "sunset.fill", temperature: 68)
                    WeatherDayView(dayOfWeek: "Fri", imageName: "moon.stars.fill", temperature: 76)
                    WeatherDayView(dayOfWeek: "Fri", imageName: "moon.stars.fill", temperature: 76)
                    WeatherDayView(dayOfWeek: "Sat", imageName: "cloud.sun.fill", temperature: 76)
                }
                
                Spacer()
            }
        }
    }
}














struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 5){
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40 , height: 40)
            Text("\(temperature)")
                .font(.system(size: 28, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}
