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











### Article View
**ArticleViewController** -> rendered through segue in *ArticlesFeedViewController* with selected *ArticleModel*

**WKWebView** rendered from viewDidLoad() in *ArticleViewController* in UIView 

### Bookmarks View 

**BookmarksViewController** -> rendered through segue in *ArticlesFeedController* 






