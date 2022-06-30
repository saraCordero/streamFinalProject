//
//  AirportOneViewController.swift
//  streamFinalProject
//
//  Created by Scholar on 6/29/22.
//

import UIKit

class AirportOneViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let atlanta = ["General Map", "Specific Map"]
    
    @IBOutlet weak var mapImage: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
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
            return atlanta.count
        }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return atlanta[row]
        }
        
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            label.text = atlanta[row]
            mapImage.image = UIImage(named: atlanta[row] + " A")
        }
        
    }


