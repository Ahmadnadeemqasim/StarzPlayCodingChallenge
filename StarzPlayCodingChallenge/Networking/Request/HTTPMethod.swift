//
//  HTTPMethod.swift
//  StarzPlayCodingChallenge
//
//  Created by Ahmad on 30/03/2024
//

import Foundation

typealias HttpHeaders = [String: String]
typealias Parameters = [String: Any]

enum HTTPMethod {
    case get
    case post
    case put
    case patch
    case delete
}

enum RequestEncoding {
    case url
    case json
}
