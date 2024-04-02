//
//  RepositoryProtocol.swift
//  StarzPlayCodingChallenge
//
//  Created by Ahmad on 30/03/2024
//

import Foundation

protocol RepositoryProtocol {
    var network: NetworkCallProtocol {get}
    var parser: Parser {get}
    func parseResponse <T: Decodable>(_ response: Data,
                                      successHandler: @escaping CompletionWithSuccess<T>,
                                      errorHandler: @escaping CompletionWithServiceError)
}

extension RepositoryProtocol {
    func parseResponse <T: Decodable>(_ response: Data,
                                      successHandler: @escaping CompletionWithSuccess<T>,
                                      errorHandler: @escaping CompletionWithServiceError) {
        let result = parser.parseWith(data: response, type: T.self)
        switch result {
        case .failure(_ ):
            let error: AppError = AppError.unexpectedResponse
            errorHandler(error)
        case .success(let model):
            successHandler(model)
        }
    }
}
