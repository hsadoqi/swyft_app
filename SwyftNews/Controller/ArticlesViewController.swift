//
//  ViewController.swift
//  SwyftNews
//
//  Created by Hanaa Sadoqi on 3/4/20.
//  Copyright © 2020 Hanaa Sadoqi. All rights reserved.
//

import UIKit

class ArticlesViewController: UITableViewController, ArticleDataSourceDelegate {
    var articles: [ArticleModel] = []
    var articlesViewModel: ArticlesViewModel!
    var dataSource = ArticlesDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dataSource.delegate = self
        dataSource.fetchNews()
    }
    
    // MARK - UITableView Datasource methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
//
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "articleFeedCell", for: indexPath) as? ArticleTableViewCell else {
            fatalError("The dequeued cell is not an instance of ArticleFeedCell")
        }
        let article = articles[indexPath.row]
//            let image_url = URL(string: article.urlToImage ?? "")!
//                if let data = try? Data(contentsOf: image_url) {
//                    print("it works", data)
//                    if let image = UIImage(data: data)  {
//                        print(image)
//                        cell.articleImage.image = image
//                    }
//                }


        cell.articleHeadlineLabel.text = article.title
        
    
        
        return cell
        
    }
    
    // MARK - Article Data Source Delegate
    
    func articlesDidUpdate(_ articlesDataSource: ArticlesDataSource, articles: [ArticleModel]) {
           DispatchQueue.main.async {
            self.articles = articles
            self.tableView.rowHeight = 120
            self.tableView.reloadData()
           }
    }
    
    

}


