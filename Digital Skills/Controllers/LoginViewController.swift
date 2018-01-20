//
//  ViewController.swift
//  Digital Skills
//
//  Created by theSERG on 17/01/2018.
//  Copyright © 2018 seredkins. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard identifier == "Login" else { return false }
        let name = nameTextField.text ?? ""
        
        print("shouldPerformSegue \(name)")
        return true
    }
}
