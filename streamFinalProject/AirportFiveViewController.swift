//
//  AirportFiveViewController.swift
//  streamFinalProject
//
//  Created by Scholar on 6/29/22.
//

import UIKit

class AirportFiveViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    let tambo = ["General Map", "Level 0", "Level 1", "Level 2", "Level 3"]
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
            return tambo.count
        }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return tambo[row]
        }
        
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            label.text = tambo[row]
            mapImage.image = UIImage(named: tambo[row] + " T")
        }
    

}
