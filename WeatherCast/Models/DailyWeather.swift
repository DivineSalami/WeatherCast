//
//  DailyWeather.swift
//  WeatherCast
//
//  Created by P.M. Student on 4/28/21.
//

import Foundation

struct DailyWeather: Codable, Identifiable {
    var dt: Int
    var temperature: Temperature
    var weather: [WeatherDetail]
    
    enum CodingKey: String {
        case dt
        case temperature
        case weather
    }
    init() {
         dt = 0
        temperature = Temperature(min: 0.0, max: 0.0)
        weather = [WeatherDetail(main: "", description: "", icon: "")]
    }
}

extension DailyWeather {
    var id: UUID {
        return UUID()
    }
}
