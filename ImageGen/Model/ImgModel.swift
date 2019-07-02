//
//  imgModel.swift
//  MemeGen
//
//  Created by Stephen Ouyang on 7/1/19.
//  Copyright © 2019 Stephen Ouyang. All rights reserved.
//

import Foundation

struct ImageModel: Codable {
    let copyright, date, explanation: String
    let hdurl: String
    let mediaType, serviceVersion, title: String
    let url: String
    
    enum CodingKeys: String, CodingKey {
        case copyright, date, explanation, hdurl
        case mediaType = "media_type"
        case serviceVersion = "service_version"
        case title, url
    }
}
