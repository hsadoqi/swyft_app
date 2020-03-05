//
//  ViewController.swift
//  SwyftNews
//
//  Created by Hanaa Sadoqi on 3/4/20.
//  Copyright © 2020 Hanaa Sadoqi. All rights reserved.
//

import UIKit

class WorldwideViewController: UITableViewController {
    
    let newsArray = ["Sky is blue", "Trump has been impeached", "The world is ending"]
    
    let newsfeedManager = NewsfeedManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        newsfeedManager.fetchNews()
    }


}

