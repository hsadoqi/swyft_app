//
//  NewsfeedModel.swift
//  SwyftNews
//
//  Created by Hanaa Sadoqi on 3/4/20.
//  Copyright © 2020 Hanaa Sadoqi. All rights reserved.
//

import Foundation

//protocol ArticlesFeedViewModelDelegate {
//    func getBookmarkedArticles(_ viewModel: ArticlesFeedViewModel, bookmarkedArticles: [ArticleModel])
//}

struct ArticlesFeedViewModel : Decodable{
    var articles: [ArticleModel] = []

    

}
