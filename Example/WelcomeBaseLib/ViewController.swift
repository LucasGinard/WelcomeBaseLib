//
//  ViewController.swift
//  WelcomeBaseLib
//
//  Created by 57275367 on 11/07/2023.
//  Copyright (c) 2023 57275367. All rights reserved.
//

import UIKit
import WelcomeBaseLib

class ViewController: UIViewController {

    @IBOutlet weak var btnGoLib: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func btnGoLibAction(_ sender: Any) {
        self.navigationController?.pushViewController(WelcomeViewController(), animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

