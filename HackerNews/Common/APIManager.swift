//
//  APIManager.swift
//  HackerNews
//
//  Created by Vanbungkring on 3/25/19.
//  Copyright © 2019 netra. All rights reserved.
//

import Foundation
import Alamofire

class APIManager {
    private let sessionManager: SessionManager
    
    private static var sharedApiManager: APIManager = {
        let apiManager = APIManager(sessionManager: SessionManager())
        return apiManager
    }()
    
    class func shared() -> APIManager {
        return sharedApiManager
    }
 
    private init(sessionManager: SessionManager) {
        self.sessionManager = sessionManager
        
    }
   
}
