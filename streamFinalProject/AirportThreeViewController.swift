//
//  AirportThreeViewController.swift
//  streamFinalProject
//
//  Created by Scholar on 6/29/22.
//

import UIKit

class AirportThreeViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let heathrow = ["Road Map", "Terminal 2", "Terminal 3", "Terminal 4", "Terminal 5"]
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var imagePicker: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        imagePicker.dataSource = self
    }
    

    
func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
}

func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return heathrow.count
}

func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return heathrow[row]
}

func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    label.text = heathrow[row]
    imageView.image = UIImage(named: heathrow[row] + " H")
}
}
