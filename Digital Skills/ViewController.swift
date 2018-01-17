//
//  ViewController.swift
//  Digital Skills
//
//  Created by theSERG on 17/01/2018.
//  Copyright © 2018 seredkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "Login" else { return }
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let newsController = tabBarController.viewControllers?.first as? NewsViewController else { return }
        
        var news = [NewsModel]()
        
        let model = NewsModel()
        model.title = "qwerty"
        model.details = "details"
        news.append(model)
        
        newsController.news = news
    }

}
