//
//  ArticleViewModel.swift
//  NewsAPI
//
//  Created by Bhaskar Ghosh on 11/19/20.
//

import Foundation

class ArticleViewModel: Identifiable {
    let id = UUID()
    let article: Article
    init(article: Article) {
        self.article = article
    }
    var title: String {
        return article.title
    }
    
    var description: String {
        return article.description ?? ""
    }
}
