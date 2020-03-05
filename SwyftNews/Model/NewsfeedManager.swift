//
//  NewsfeedManager.swift
//  SwyftNews
//
//  Created by Hanaa Sadoqi on 3/4/20.
//  Copyright © 2020 Hanaa Sadoqi. All rights reserved.
//

import Foundation

struct NewsfeedManager {
    let newsAPI = "https://newsapi.org/v2/top-headlines?country=us&apiKey=47b4a89f118f4f80a79df9c1ffc5d7e1"
    
    func fetchNews(){
        if let api = URL(string: newsAPI) {
            let session =  URLSession(configuration: .default)
            let task = session.dataTask(with: api, completionHandler: { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                if let newsJSON = data {
                    self.parseJSON(newsData: newsJSON)
                }
            })
        task.resume()
        }
    }
    
    func parseJSON(newsData: Data) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(NewsfeedData.self, from: newsData)
            var articles: [ArticleModel] = []

            for article in decodedData.articles {
                if (article.description) != nil && (article.content) != nil {
                    let description = article.description
                    let content = article.content
                    let title = article.title
                    let url = article.url
                    let urlToImage = article.urlToImage
                    articles.append(ArticleModel(title: title, urlToImage: urlToImage, description: description, url: url, content: content))
                }
            }
        } catch {
            print("error", error)
        }
    }
    
}
