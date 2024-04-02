//
//  SeasonDetailRequestModel.swift
//  StarzPlayCodingChallenge
//
//  Created by Ahmad on 29/03/2024.
//

import Foundation

struct SeasonDetailRequestModel: Codable {
    
    var seriesId: String?
    var api_key: String?
    var seasonNum: String?
}
