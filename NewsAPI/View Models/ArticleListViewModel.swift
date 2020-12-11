//
//  ArticleListViewModel.swift
//  NewsAPI
//
//  Created by Bhaskar Ghosh on 11/19/20.
//

import Foundation
import Combine

class ArticleListViewModel: ObservableObject {
    @Published var isLoading: Bool = true
    
    init() {}
    
    var articles  = [ArticleViewModel]() {
        didSet {
            isLoading = false
        }
    }
    
    func fetchTopHeadlines() {
        let urlStr = "https://newsapi.org/v2/top-headlines?country=us&apiKey=59151437344441c6b6ac113246747054"
        guard let url  = URL(string: urlStr) else {
            fatalError("URL is not correct!")
        }
        WebService().loadTopHeadlines(url: url) {articles in
            if let articles = articles {
                self.articles = articles.map(ArticleViewModel.init)
            }
        }
    }
}
