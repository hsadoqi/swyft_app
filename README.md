# SwyftNews
---
An app that allows users to immediately view the top headlines in the US, view the article content at the source and bookmark their favorite articles.

## Technologies Implemented:
- SDWebImage
- WebKit 
- UIKit
- NewsAPI 

## Overview

### Articles Feed
**ArticlesDataSource** -> fetched articles data from api, created an array of *ArticleModels* in *ArticlesFeedViewModel*

**ArticlesFeedViewModel** -> stored array of *ArticleModel* objects 

**ArticleModel** -> set attributes for each instantiated object

**ArticlesFeedViewController** -> reloaded table data populated with information from *ArticlesFeedViewModel* and fetched Data, rendered *ArticleTableViewCell* for each object received 

**ArticleTableViewCell** -> handled outlets and actions for prototype cell

![ArticlesFeedVC](https://user-images.githubusercontent.com/40529421/76104213-f3eca600-5fa0-11ea-876b-7eafff18f15f.png)


### Article View
**ArticleViewController** -> rendered through segue in *ArticlesFeedViewController* with selected *ArticleModel*

**WKWebView** rendered from viewDidLoad() in *ArticleViewController* in UIView 

![ArticleVC](https://user-images.githubusercontent.com/40529421/76104218-f6e79680-5fa0-11ea-8973-55bd3e21a8b9.png)


### Bookmarks View 

**BookmarksViewController** -> rendered through segue in *ArticlesFeedController* 

![BookmarksVC](https://user-images.githubusercontent.com/40529421/76104219-f7802d00-5fa0-11ea-9c0f-0f97d1c1f4d9.png)




