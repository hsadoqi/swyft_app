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
        print("print", articles[indexPath.row])
        let cell = tableView.dequeueReusableCell(withIdentifier: "articleFeedCell", for: indexPath)

        cell.textLabel?.text = articles[indexPath.row].title!
        return cell
    }
    
    // MARK - Article Data Source Delegate
    
    func articlesDidUpdate(_ articlesDataSource: ArticlesDataSource, articles: [ArticleModel]) {
           DispatchQueue.main.async { // Correct
              self.articles = articles
              self.tableView.reloadData()
           }
    }
    
    

}


