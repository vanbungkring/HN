//
//  APIEndpointItem.swift
//  HackerNews
//
//  Created by Vanbungkring on 3/25/19.
//  Copyright © 2019 netra. All rights reserved.
//

import Foundation
enum APIEndPointItem {
    case topHeadline
}

extension APIEndPointItem:APIEndPointType{
    var baseURL: String {
        <#code#>
    }
    
    var path: String {
        <#code#>
    }
    
    var httpMethod: HTTPMethod {
        <#code#>
    }
    
    var headers: HTTPHeaders? {
        <#code#>
    }
    
    var url: URL {
        <#code#>
    }
    
    var encoding: ParameterEncoding {
        <#code#>
    }
    
    var version: String {
        <#code#>
    }
    
    
}
