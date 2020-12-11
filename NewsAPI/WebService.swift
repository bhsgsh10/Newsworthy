//
//  WebService.swift
//  NewsAPI
//
//  Created by Bhaskar Ghosh on 11/19/20.
//

import Foundation

class WebService {
    func loadTopHeadlines(url: URL, completion: @escaping (([Article]?) -> ())) {
        
        URLSession.shared.dataTask(with: url){data, response, error in
            guard let data = data, error == nil  else {
                completion(nil)
                return
            }
            
            let response = try? JSONDecoder().decode(NewsResponse.self, from: data)
            if let response = response {
                DispatchQueue.main.async {
                    completion(response.articles)
                }
            }
        }.resume()
    }
}
