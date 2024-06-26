//
//  JsonParser.swift
//  StarzPlayCodingChallenge
//
//  Created by Ahmad on 30/03/2024
//

import Foundation

/**  JsonParser : class  to Parse   **/
class JsonParser: Parser {
    func parseWith<T: Decodable>(data: Data, type: T.Type = T.self) -> Result<T, AppError> {
        let decoder = JSONDecoder()
        do {
            let model = try decoder.decode(type, from: data)
            return .success(model)
        } catch {
            debugPrint(error)
            return .failure(AppError.unexpectedResponse)
        }
    }
}
