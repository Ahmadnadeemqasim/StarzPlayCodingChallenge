//
//  ApiErrorResponseModel.swift
//  StarzPlayCodingChallenge
//
//  Created by Ahmad on 30/03/2024
//

import Foundation

/**  ApiErrorResponseModel : response handler  **/
struct ApiErrorResponseModel: Decodable {
    var error, error_description, message: String?
    var statusCode: Int?

    enum CodingKeys: String, CodingKey {
        case error
        case error_description
        case message
        case statusCode
    }

    var errorMessage: String {
        return error_description ?? message ?? UNKNOWN_ERROR_MESSAGE
    }
}
