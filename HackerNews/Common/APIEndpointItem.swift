//
//  APIEndpointItem.swift
//  HackerNews
//
//  Created by Vanbungkring on 3/25/19.
//  Copyright © 2019 netra. All rights reserved.
//
import Alamofire
import Foundation
enum APIEndPointItem {
    case topHeadlineHackerNews
}

extension APIEndPointItem:APIEndPointType{
    var url: URL{
        return URL(string: self.baseURL + self.version + self.path+"&country=id&apikey="+APIConstant().HNAPIKey)!
    }
    
    var baseURL: String {
        return APIConstant().HNBaseURL
    }
    
    var path: String {
        switch self {
        case .topHeadlineHackerNews:
            return "/top-headlines"
        default:
             return ""
        }
    }
    
    var httpMethod: HTTPMethod {
        return .get
    }
 
    var headers: HTTPHeaders? {
        return nil
    }
    
    var encoding: ParameterEncoding {
        return JSONEncoding.default
    }
    
    var version: String {
        return "v2"
    }
    
    
    
}
