//
//  ViewController.swift
//  Currency
//
//  Created by Jamie on 2020/09/29.
//  Copyright © 2020 Jamie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var cadLabel: UILabel!
    
    @IBOutlet weak var chfLabel: UILabel!
    
    @IBOutlet weak var gbpLabel: UILabel!
    
    @IBOutlet weak var jpyLabel: UILabel!
    
    @IBOutlet weak var usdLabel: UILabel!
    
    @IBOutlet weak var tryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getRatesClicked(_ sender: Any) {
    }
    
}

