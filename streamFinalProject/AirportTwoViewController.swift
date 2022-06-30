//
//  AirportTwoViewController.swift
//  streamFinalProject
//
//  Created by Scholar on 6/29/22.
//

import UIKit

class AirportTwoViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    let guarulhos = ["General Map", "Terminal 1", "Terminal 2 Arrivals", "Terminal 2 Departures", "Terminal 3 Arrivals", "Terminal 3 Departures"]
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var mapImage: UIImageView!
    
    @IBOutlet weak var terminalPicker: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        terminalPicker.delegate = self
        terminalPicker.dataSource = self
        
    }
            
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return guarulhos.count
        }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return guarulhos[row]
        }
        
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            label.text = guarulhos[row]
            mapImage.image = UIImage(named: guarulhos[row] + " G")
        }
        
    }
    


