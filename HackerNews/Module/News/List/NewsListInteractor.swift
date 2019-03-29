//
//  NewsListInteractor.swift
//  HackerNews
//
//  Created by Vanbungkring on 3/25/19.
//  Copyright © 2019 netra. All rights reserved.
//

import Foundation
import Alamofire
class NewsListInteractor {
    func requestFeedHackerNews(){
        let todoEndpoint: String = "https://newsapi.org/v2/top-headlines?country=id&apiKey=10e9590b3a564643b2d285ef288f384b"
        Alamofire.request(todoEndpoint)
            .responseJSON { response in
                guard let json = response.result.value as? [String: Any] else {
                    print("didn't get todo object as JSON from API")
                    print("Error: \(response.result.error)")
                    return
                }
                print(json)
        }
    }
}
