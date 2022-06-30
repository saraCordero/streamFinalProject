//
//  PackingListViewController.swift
//  streamFinalProject
//
//  Created by Scholar on 6/29/22.
//

import UIKit

class PackingListViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    
    @IBOutlet weak var label5: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label1.text = "Tap an icon to show item lists here. "
        label2.text = ""
        label3.text = ""
        label4.text = ""
        label5.text = ""
    }

    
    @IBAction func clothingTapped(_ sender: Any) {
        label1.text = "Some outfit sets"
        label2.text = "Shoes"
        label3.text = "Jacket"
        label4.text = "Undergarments & Socks"
        label5.text = "Pajamas"

    }

    @IBAction func toiletriesTapped(_ sender: Any) {
        label1.text = "Comb or brush"
        label2.text = "Hair products"
        label3.text = "Toothcare (brush, paste, floss)"
        label4.text = "Makeup or razors"
        label5.text = "Face and body wash"

    }
    @IBAction func medicineTapped(_ sender: Any) {
        label1.text = "Allergy supplies"
        label2.text = "Prescriptions"
        label3.text = "Glasses or contact lenses"
        label4.text = "Retainers"
        label5.text = ""
        
    }

    @IBAction func miscellTapped(_ sender: Any) {
        label1.text = "Credit/debit card or cash"
        label2.text = "Phone/camera & chargers"
        label3.text = "Pillow/blanket"
        label4.text = "Everyday bag"
        label5.text = "Snacks"

    }

    @IBAction func documentsTapped(_ sender: Any) {
        label1.text = "Tickets"
        label2.text = "Hotel reservations"
        label3.text = "Passport"
        label4.text = "Identification (i.e. driver's license)"
        label5.text = "Address"

    }
    
    
    
}
