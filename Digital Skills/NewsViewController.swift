//
//  NewsViewController.swift
//  Digital Skills
//
//  Created by Andrey on 17/01/2018.
//  Copyright © 2018 seredkins. All rights reserved.
//

import UIKit

class NewsViewController: UITableViewController {
    
    var news: [NewsModel]?

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newsReuseIdentifier", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = news?[indexPath.row].title ?? ""

        return cell
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
