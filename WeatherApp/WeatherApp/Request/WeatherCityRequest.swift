//
//  WeatherRequest.swift
//  WeatherApp
//
//  Created by warodom on 22/1/2566 BE.
//

import Foundation
import Alamofire
import ObjectMapper

struct Config {
    static let host = "https://api.openweathermap.org/"
    static let apiKey = "b8f2133072851d1efa23daded615196c"
}

struct WeatherCityRequest {
    
    typealias ResponseType = [GeoCityBase]

    func request(q: String, complete: @escaping(ResponseType) -> Void) {
        
        AF.request(
            "\(Config.host)geo/1.0/direct?q=\(q)&appid=\(Config.apiKey)",
            method: .get
        ).responseData(completionHandler: { result in
            switch result.result {
            case .success(let data):
                let json = try? JSONSerialization.jsonObject(with: data, options: [])
                guard let dict = json as? [[String: Any]] else {
                   return debugPrint("error json data")
                }
                let geoCityBases = dict.map { (reason) -> GeoCityBase in
                    return Mapper<GeoCityBase>().map(JSON: reason)!
                }
                complete(geoCityBases)
            case .failure(let error):
                debugPrint(error)
            }
        })
    }
}

struct WeatherCurrentRequest {
    
    struct requestParam {
        let lat: Double
        let long: Double
        let flag: Bool
    }
    
    typealias ResponseType = CurrentWeather
    
    func request(request: requestParam, complete: @escaping(ResponseType) -> Void) {
        let flag = request.flag ? "metric" : "imperial"
        AF.request(
            "\(Config.host)data/2.5/weather?lat=\(request.lat)&lon=\(request.long)&units=\(flag)&appid=\(Config.apiKey)",
            method: .get
        ).responseData(completionHandler: { result in
            switch result.result {
            case .success(let data):
                let json = try? JSONSerialization.jsonObject(with: data, options: [])
                guard let dict = json as? [String: Any] else {
                   return debugPrint("error json data")
                }
                
                guard let response = Mapper<ResponseType>().map(JSON: dict) else {
                    return debugPrint("error json mapper")
                }
                complete(response)
            case .failure(let error):
                debugPrint(error)
            }
        })
    }
}

struct WeatherForecastRequest {
    
    struct requestParam {
        let lat: Double
        let long: Double
        let flag: Bool
    }
    
    typealias ResponseType = ForecastBase
    
    func request(request: requestParam, complete: @escaping(ResponseType) -> Void) {
        let flag = request.flag ? "metric" : "imperial"
        AF.request(
            "\(Config.host)data/2.5/forecast?lat=\(request.lat)&lon=\(request.long)&units=\(flag)&appid=\(Config.apiKey)",
            method: .get
        ).responseData(completionHandler: { result in
            switch result.result {
            case .success(let data):
                let json = try? JSONSerialization.jsonObject(with: data, options: [])
                guard let dict = json as? [String: Any] else {
                   return debugPrint("error json data")
                }
                
                guard let response = Mapper<ResponseType>().map(JSON: dict) else {
                    return debugPrint("error json mapper")
                }
                complete(response)
            case .failure(let error):
                debugPrint(error)
            }
        })
    }
}
