//
//  APIConstant.swift
//  HackerNews
//
//  Created by Vanbungkring on 3/25/19.
//  Copyright © 2019 netra. All rights reserved.
//

import UIKit

struct API {
    struct ConstantKey {
        let HNAPIKey = "10e9590b3a564643b2d285ef288f384b"
        let HNBaseURL = "https://newsapi.org/v2"
    }
    struct Url {
        let topHeadlineAPI = "/top-headlines"
    }
}
class APIConstant: NSObject {
    func awakeFrom() {
    
    }
}
