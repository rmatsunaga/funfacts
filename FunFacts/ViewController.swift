//
//  ViewController.swift
//  FunFacts
//
//  Created by Rey Matsunaga on 10/25/18.
//  Copyright © 2018 Rey Matsunaga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    
    @IBOutlet weak var funFactButton: UIButton!
    let factProvider = FactProvider()
    let colorProvider = BackgroundColorProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factProvider.randomFact()     }


    @IBAction func showFact() {
        
        funFactLabel.text = factProvider.randomFact()
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
    }
}


