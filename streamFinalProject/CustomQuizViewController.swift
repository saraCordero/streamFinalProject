//
//  CustomQuizViewController.swift
//  streamFinalProject
//
//  Created by Scholar on 6/29/22.
//

import UIKit

class CustomQuizViewController: UIViewController {

    @IBOutlet weak var title1: UILabel!
    @IBOutlet weak var subtitle: UILabel!
    
    
    var weather : String = ""
    var temperature : String = ""
    var duration : String = ""
    var purpose: String = ""
    var destination : String = ""
    
//    init(coder:NSCoder) {
//
//    }
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    // labels
    @IBOutlet weak var weatherLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var purposeLabel: UILabel!
    @IBOutlet weak var destinationLabel: UILabel!
    
    
    @IBOutlet weak var view1: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        weatherLabel.text = ""
        tempLabel.text = ""
        durationLabel.text = ""
        purposeLabel.text = ""
        destinationLabel.text = ""
        view1.isHidden = true
    }
    

    @IBAction func submitTapped(_ sender: Any) {
        title1.text = "Extra Items to Pack"
        subtitle.text = "Based on the factors you selected, we suggest the following extra items to pack."
        
        view1.isHidden = false
        showExtraItems()
        
    }
    
    
    func showExtraItems() {
        if weather == "sunny" {
            weatherLabel.text = "Sunscreen, sunglasses, lotion"
        } else if weather == "rainy" {
            weatherLabel.text = "Umbrellas, raincoat, rain boots"
        } else if weather == "snowy"{
            weatherLabel.text = "Snow shoes, gloves, earmuffs"

        }
        
        
        if temperature == "hot" {
            tempLabel.text = "Mini handheld fans, deodorant"

        } else if temperature == "cold" {
            tempLabel.text = "puffer or larger jackets"
        }
        
        
        if duration == "weeks" {
            durationLabel.text = "None needed"
        } else if duration == "months" {
            durationLabel.text = "Laundry basket"
        }
        
        
        if purpose == "vacation" {
            purposeLabel.text = "Travel journal, lightweight books"
        } else if purpose == "business" {
            purposeLabel.text = "Laptop, notebooks, writing utensils"
        }
        
        
        if destination == "mountains" {
            destinationLabel.text = "Hiking Bag, hiking shoes/gear, bug spray"
            
        } else if destination == "beach" {
            destinationLabel.text = "Swimwear, towels, goggles, water toys"
            
        } else if destination == "city" {
            destinationLabel.text = "City maps, comfortable shoes"
        }
    }
    
    
    
    
    
    // BUTTONS
    @IBAction func sunnyTapped(_ sender: Any) {
        weather = "sunny"
    }
    @IBAction func rainyTapped(_ sender: Any) {
        weather = "rainy"
    }
    @IBAction func snowyTapped(_ sender: Any) {
        weather = "snowy"
    }
    
    @IBAction func hotTapped(_ sender: Any) {
        temperature = "hot"
    }
    @IBAction func coldTapped(_ sender: Any) {
        temperature = "cold"
    }
    
    @IBAction func weeksTapped(_ sender: Any) {
        duration = "weeks"
    }
    @IBAction func monthsTapped(_ sender: Any) {
        duration = "months"
    }
    
    @IBAction func vacationTapped(_ sender: Any) {
        purpose = "vacation"
    }
    @IBAction func businessTapped(_ sender: Any) {
        purpose = "business"
    }
    @IBAction func mountainTapped(_ sender: Any) {
        destination = "mountains"
    }
    @IBAction func beachTapped(_ sender: Any) {
        destination = "beach"
    }
    @IBAction func cityTapped(_ sender: Any) {
        destination = "city"
    }
    

}
