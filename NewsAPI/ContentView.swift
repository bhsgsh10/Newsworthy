//
//  ContentView.swift
//  NewsAPI
//
//  Created by Bhaskar Ghosh on 11/19/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model: ArticleListViewModel
    var body: some View {
        List(model.articles) { article in
            VStack(alignment: .leading) {
                Text(article.title).lineLimit(nil)
                Text(article.description)
                    .foregroundColor(.secondary)
                    .lineLimit(nil)
            }
        }.onAppear(perform: {
            model.fetchTopHeadlines()
        })
    }
    
    init() {
        model = ArticleListViewModel()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
