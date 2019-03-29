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
    func call<T>(type: APIEndPointType, params: Parameters? = nil, handler: @escaping (T?, _ error: Error?)->()) where T: Codable {
        
        self.sessionManager.request(type.url,
                                    method: type.httpMethod,
                                    parameters: params,
                                    encoding: type.encoding,
                                    headers: type.headers).validate().responseJSON { data in
                                        switch data.result {
                                        case .success(_):
                                            let decoder = JSONDecoder()
                                            if let jsonData = data.data {
                                                let result = try! decoder.decode(T.self, from: jsonData)
                                                handler(result, nil)
                                            }
                                            break
                                        case .failure(_):
                                            handler(nil, Error.self as? Error)
                                            break
                                        }
        }
    }
    
}

