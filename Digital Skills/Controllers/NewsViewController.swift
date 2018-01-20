//
//  NewsViewController.swift
//  Digital Skills
//
//  Created by theSERG on 19/01/2018.
//  Copyright © 2018 seredkins. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {
    
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    
    var news: NewsModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headerLabel.text = news?.title
        bodyLabel.text = news?.details
    }
    
 
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
