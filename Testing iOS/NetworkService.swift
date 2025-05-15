//
//  NetworkService.swift
//  ExpectationTest
//
//  Created by Ahmed on 5/15/25.
//  Copyright © 2025 Ahmed Ali. All rights reserved.
//

import Foundation


protocol NetworkServiceProtocol {
    func loadDate(url: String, completionHandler: @escaping ([News]?, Error?) -> Void)
}


class NetworkService: NetworkServiceProtocol {
    func loadDate(url: String, completionHandler: @escaping ([News]?, Error?) -> Void) {
        
        
        let url = URL(string: "https://raw.githubusercontent.com/DevTides/NewsApi/master/news.json"
        )
        guard let newURL = url else {return}
        
        let request = URLRequest(url: newURL)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
            }else {
                let result = try?
                JSONDecoder().decode([News].self, from: data!)
                completionHandler(result, nil)
            }
            
        }.resume()
    }
    
    
    
}
