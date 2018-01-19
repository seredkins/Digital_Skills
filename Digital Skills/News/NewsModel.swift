//
//  NewsModel.swift
//  Digital Skills
//
//  Created by Andrey on 17/01/2018.
//  Copyright © 2018 seredkins. All rights reserved.
//

import Foundation

class NewsModel {
    var title: String?
    var details: String?
    
    func zipedDetails() -> String? {
        return details?.substring(to: 97)
    }
}

extension String{
    func substring(to index: Int) -> String?{
        var substr = String()
        var counter = 0
        if index < 0 { return nil }
        
        for element in self{
            substr.append(element)
            counter += 1
            if counter == index { break }
        }
        
        return substr
    }
}
