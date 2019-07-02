//
//  Router.swift
//  MemeGen
//
//  Created by Stephen Ouyang on 7/1/19.
//  Copyright © 2019 Stephen Ouyang. All rights reserved.
//

import Foundation

enum Router {
    case getNasaData
    
    var scheme: String {
        switch self {
        case .getNasaData:
            return "https"
        }
    }
    
    var host: String {
        switch self {
        case .getNasaData:
            return "api.nasa.gov"
        }
    }
    
    var path: String {
        switch self {
        case .getNasaData:
            return "/planetary/apod"
        }
    }
    
    var method: String {
        switch self {
        case .getNasaData:
            return "GET"
        }
    }
    
    var params: [URLQueryItem] {
        switch self {
        case .getNasaData:
            return [URLQueryItem(name: "api_key", value: api)]
        }
    }
}
