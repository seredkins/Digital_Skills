//
//  NewsListModel.swift
//  Digital Skills
//
//  Created by theSERG on 18/01/2018.
//  Copyright © 2018 seredkins. All rights reserved.
//

import Foundation

class NewsListModel{
    
    var newsList: [NewsModel]?
    
    func refresh(){
        //
    }
    
    func append(_ element : NewsModel){
        if self.newsList != nil{
            self.newsList!.append(element)
        } else {
            self.newsList = [element]
        }
    }
    print("some changes")
        
}

var news = NewsListModel()
