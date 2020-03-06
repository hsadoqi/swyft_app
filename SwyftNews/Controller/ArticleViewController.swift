//
//  ArticleViewController.swift
//  SwyftNews
//
//  Created by Hanaa Sadoqi on 3/6/20.
//  Copyright © 2020 Hanaa Sadoqi. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController {
    
    var article: ArticleModel?
    
    @IBOutlet weak var headlineLabel: UILabel!
    @IBOutlet weak var articleContentView: UITextView!
    @IBOutlet weak var articleImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        loadArticle()
        
        // Do any additional setup after loading the view.
    }
    
    func loadArticle(){
        headlineLabel.text = article?.title!
        let image_url = URL(string: article?.urlToImage ?? "")
        articleImageView.sd_setImage(with: image_url)
        articleContentView.text = article?.content
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
