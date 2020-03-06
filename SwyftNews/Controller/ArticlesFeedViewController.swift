//
//  ViewController.swift
//  SwyftNews
//
//  Created by Hanaa Sadoqi on 3/4/20.
//  Copyright © 2020 Hanaa Sadoqi. All rights reserved.
//

import UIKit
import SDWebImage

class ArticlesFeedViewController: UITableViewController, ArticleDataSourceDelegate {
    var articles: [ArticleModel] = []
    var articlesViewModel: ArticlesFeedViewModel!
    var dataSource = ArticlesDataSource()
    var selectedIndex: IndexPath?
    var selectedArticle: ArticleModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        let image_url = URL(string: article.urlToImage ?? "")
        cell.articleImage.sd_setImage(with: image_url)
        cell.articleHeadlineLabel.text = article.title
        return cell
        
    }
    
    // MARK - UITableView Delegate methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedArticle = articles[indexPath.row]
        self.performSegue(withIdentifier: "goToArticle", sender: self)
    }

    
    
    // MARK - Article Data Source Delegate
    
    func articlesDidUpdate(_ articlesDataSource: ArticlesDataSource, articles: [ArticleModel]) {
           DispatchQueue.main.async {
            self.articles = articles
            self.tableView.rowHeight = 120
            self.tableView.reloadData()
           }
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToArticle" {
            let destinationVC = segue.destination as! ArticleViewController
            destinationVC.article = selectedArticle
        }
    }

}


extension URL {
    init(staticString string: StaticString) {
        guard let url = URL(string: "\(string)") else {
            preconditionFailure("Invalid static URL string: \(string)")
        }
        self = url
    }
}
