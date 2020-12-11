//
//  Models.swift
//  NewsAPI
//
//  Created by Bhaskar Ghosh on 11/19/20.
//

import Foundation

struct NewsResponse: Codable {
    let articles: [Article]
}

struct Article: Codable {
    let title: String
    let description: String?
}
