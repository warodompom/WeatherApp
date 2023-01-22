//
//  ViewController.swift
//  WeatherApp
//
//  Created by warodom on 22/1/2566 BE.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var cityTF: UITextField!
    @IBOutlet weak var loading: UIActivityIndicatorView!
    
    @IBOutlet weak var tempLB: UILabel!
    @IBOutlet weak var humidityLB: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    
    @IBOutlet weak var toggle: UISegmentedControl!
    
    var cityGeo: GeoCityBase?
    var cc = true
    
    var searchTask: DispatchWorkItem?
    let cityRequest = WeatherCityRequest()
    let currentRequest = WeatherCurrentRequest()
    let forecastRequest = WeatherForecastRequest()
    var forecastDate: ForecastBase?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onChange(_ sender: UITextField) {
        if sender == cityTF {
            searchTask?.cancel()
            let task = DispatchWorkItem { [unowned self] in
                guard let searchText = sender.text, !(sender.text?.isEmpty ?? true) else { return }
                self.cityNameRequest(q: searchText)
            }
            
            searchTask = task
            DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: task)
        }
    }
    
    
    func cityNameRequest(q: String) {
        loading.startAnimating()
        cityRequest.request(
            q: q,
            complete: { [self] response in
                cityGeo = response.first
                let request = WeatherCurrentRequest.requestParam(
                    lat: response.first?.lat ?? 0,
                    long: response.first?.lon ?? 0,
                    flag: toggle.selectedSegmentIndex == 0)
                currentRequest(request: request)
                debugPrint(response)
            })
    }
    
    func currentRequest(request: WeatherCurrentRequest.requestParam) {
        
        currentRequest.request(
            request: request,
            complete: { [self] respone in
                viewUpdate(data: respone)
                loading.stopAnimating()
            })
    }
    
    func viewUpdate(data: CurrentWeather) {
        tempLB.text = "temp -> \(data.main?.temp ?? 0)"
        humidityLB.text = "humidity -> \(data.main?.humidity ?? 0)"
        debugPrint(data)
    }
    
    @IBAction func onToggle(_ sender: UISegmentedControl) {
        cc = !cc
        onChange(cityTF)
    }
    
    @IBAction func onNext(_ sender: UIButton) {
        if let geo = cityGeo {
            loading.startAnimating()
            let request = WeatherForecastRequest.requestParam(
                lat: geo.lat ?? 0, long: geo.lon ?? 0, flag: toggle.selectedSegmentIndex == 0)
            forecastRequest.request(
                request: request,
                complete: { [self] forecast in
                    forecastDate = forecast
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: { [self] in
                        performSegue(withIdentifier: "showlist", sender: self)
                        loading.stopAnimating()
                    })
                    
                })
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let desVC = segue.destination as? WeatherListTableViewController {
            desVC.forecastDate = forecastDate
            print("To List -> \(desVC.description)")
        }
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
}

