//
//  RestrictionsViewController.swift
//  streamFinalProject
//
//  Created by Scholar on 6/29/22.
//

import UIKit

class RestrictionsViewController: UIViewController {
    
    @IBOutlet weak var emptyLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func carryOnTapped(_ sender: UIButton) {
        emptyLabel.text = "Follow the 3-1-1 rule (Each liquid must be in a 3.4-ounce or less container (3), all containers must be placed inside one clear quart-sized plastic bag (1), and each passenger is only allowed one plastic bag (1) It should also be placed in the front pocket of your carry-on for accessibility, and it must be placed in the bin once you get to the security lane.Pack large electronics on the top layer of your carry-on for screening accessibility. Solid food items are allowed (not liquids or gels)."
    }
    
    @IBAction func checkedBagsTapped(_ sender: UIButton) {
        emptyLabel.text = "Containers that are larger than 3.4 ounces (100ml) regardless of amount inside must be in checked baggage.All travelers are required to declare meats, fruits, vegetables, plants, seeds, soil, as well as plant and animal products they may be carrying. If purchasing a baggage lock, be sure to look for those that are TSA recognized."
    }
    
}
