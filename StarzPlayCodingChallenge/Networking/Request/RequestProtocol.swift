//
//  RequestProtocol.swift
//  StarzPlayCodingChallenge
//
//  Created by Ahmad on 30/03/2024
//

import Foundation
import UIKit

protocol RequestProtocol {
    associatedtype Response: Decodable
    associatedtype ErrorType: Error

    var baseURL: String { get }
    var method: HTTPMethod { get }
    var encoding: RequestEncoding { get }
    var path: String { get }
    var parameters: Parameters? { get }
    var headers: HttpHeaders? { get }
    var url: URL {get}
}

extension RequestProtocol {
    var headers: HttpHeaders? { ["Content-Type": APP_JSON] }

    var baseURL: String {
       return ServerUrl.stagingUrl
    }

    var url: URL {
        return URL(string: baseURL + path)!
    }

    var encoding: RequestEncoding {
        return .url
    }
}
