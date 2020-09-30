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
        
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=422be1d35ae329b2e6bc148828387a5a&format=1")
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: url!) { (data, response, error) in
            
            if error != nil {
                
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                
                let OKButton = UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil)
                
                alert.addAction(OKButton)
                self.present(alert, animated: true, completion: nil)
            }
            
            else {
                
                if data != nil {
                    
                    do {
                        
                        let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! Dictionary<String, Any>
                        
                        DispatchQueue.main.async {
                           
                            if let rates = jsonResponse["rates"] as? [String : Double] {
                                
                                let cad = rates["CAD"]
                                self.cadLabel.text = String(cad!)
                            }
                            
                        }
                    } catch {
                        
                        print("error")
                    }
                    
                }
                
            }
        }
        
        task.resume()
    }
    
}

