//
//  NewsModel.swift
//  SwyftNews
//
//  Created by Hanaa Sadoqi on 3/4/20.
//  Copyright © 2020 Hanaa Sadoqi. All rights reserved.
//
//
import Foundation
//
struct ArticleModel : Decodable {
    var title: String? = ""
    var urlToImage: String? = ""
    var description: String? = ""
    var url: String? = ""
    var content: String? = ""
}
