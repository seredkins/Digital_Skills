//
//  NewsViewController.swift
//  Digital Skills
//
//  Created by Andrey on 17/01/2018.
//  Copyright © 2018 seredkins. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController {
    
    var news = [NewsModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var model = NewsModel()
        model.title = "qwerty"
        model.details = "details"
        news.append(model)
        
//        let model2 = NewsModel()
        model.title = "dhfjdf"
        model.details = "sijdijwhd iuw ehf ewfihifhiwe  fhiw sijdi  jw diuw ehfew  hiwefh  wehfs hd ehfewfihifhiw fhiweh ij i  whdiuwehfe wfihi  fhiwefh hfsijdijwh iu fewfihi fhiwefhiw hfsi whdiuwehfewfihifhiwefhiwehf"
        news.append(model)

    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newsReuseIdentifier", for: indexPath)

        // Configure the cell...
        let newsData = news[indexPath.row]
        cell.textLabel?.text = newsData.title!
        cell.detailTextLabel?.text = String(describing: newsData.details!.prefix(97))
        
        return cell
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        guard let newsViewController = segue.destination as? NewsViewController else { return }
        
        if let index = tableView.indexPathForSelectedRow?.row {
            newsViewController.news = news[index]
        }
    }
}
