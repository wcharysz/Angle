//
//  WeatherConditions.swift
//  Ryboszukacz-Swift
//
//  Created by User  on 19.09.2017.
//  Copyright © 2017 J Apps!. All rights reserved.
//

import Foundation
import ObjectMapper

class WeatherConditions: Mappable {
    
    var temperature: Float?
    var releativeHumidity: String?
    var pressure: Int?
    var windDirection: String?
    var precipation: Int?
    var sunrise: DateComponents?
    var sunset: DateComponents?
    var weatherImageURL: URL?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        temperature <- map["temp_c"]
        releativeHumidity <- map["relative_humidity"]
        pressure <- map["pressure_mb"]
        windDirection <- map["wind_kph"]
        precipation <- map["precip_today_metric"]
        
    }
}
