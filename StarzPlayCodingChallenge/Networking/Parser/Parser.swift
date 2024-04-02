//
//  Parser.swift
//  StarzPlayCodingChallenge
//
//  Created by Ahmad on 30/03/2024
//

import Foundation

/**  Parser : protocol to Parse   **/
protocol Parser {
    func parseWith<T: Decodable>(data: Data, type: T.Type) -> Result<T, AppError>
}
