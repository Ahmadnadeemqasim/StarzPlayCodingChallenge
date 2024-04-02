//
//  TypeAlias.swift
//  StarzPlayCodingChallenge
//
//  Created by Ahmad on 30/03/2024
//

import Foundation

// MARK: - Typealias
typealias VoidHandler = () -> Void
typealias OneDoubleParamClosure = (Double) -> Void
typealias OntIntParamClosure = (Int) -> Void
typealias TwoIntParamClosure = (Int, Int) -> Void
typealias CompletionWithSuccess<T: Decodable> = (T) -> Void
typealias CompletionWithServiceError = (AppError) -> Void
typealias CompletionWithError = (ApiError) -> Void
