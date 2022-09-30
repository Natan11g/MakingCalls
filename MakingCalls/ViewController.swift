//
//  ViewController.swift
//  MakingCalls
//
//  Created by Natan Gluszko on 30/09/2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var numberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnCall(_ sender: Any) {
        let url = URL(string: "tel://\(numberTextField.text!)")
        
        if UIApplication.shared.canOpenURL(url!) {
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        }
    }
}

