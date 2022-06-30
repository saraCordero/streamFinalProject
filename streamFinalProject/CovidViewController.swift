//
//  CovidViewController.swift
//  streamFinalProject
//
//  Created by Scholar on 6/29/22.
//

import UIKit

class CovidViewController: UIViewController {

    @IBOutlet weak var covidText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func hartsfieldTapped(_ sender: UIButton) {
        
        covidText.text = "No proof of a negative covid test is required, but it is recommended to follow public health safety measures."
    }
    
    @IBAction func guarulhosTapped(_ sender: UIButton) {
        covidText.text = "Fully vaccinated travelers must present proof of COVID-19 vaccination, and unvaccinated travelers who meet the COVID-19 vaccination exemptions must present negative COVID-19 Tests Results. There is also no need to quarantine."
    }
    
    @IBAction func heathrowTapped(_ sender: UIButton) {
        covidText.text = "You do not need to quarantine or take any pre-departure or post-arrival COVID-19 tests. It is also recommended to wear a mask inside buildings and bus transportations."
    }
    
    @IBAction func beijingTapped(_ sender: UIButton) {
        
        covidText.text = "You are required to quarantine for 14 days upon arrival at a government-approved facility or hotel at the travelers' own expense. All arrivals must test for Covid-19, and are required to wear masks."
    }
    
    @IBAction func tamboTapped(_ sender: UIButton) {
        covidText.text = "Passengers must have a mask to be permitted inside the terminal building. Travelers must have tested negative after completing an official COVID-19 test within 72 hours prior to departure, and upon arrival."
        
    }
    
}
