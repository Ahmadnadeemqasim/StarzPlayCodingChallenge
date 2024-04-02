//
//  NetworkCallFactoryProtocol.swift
//  StarzPlayCodingChallenge
//
//  Created by Ahmad on 30/03/2024
//

import Foundation

/**  NetworkCallFactoryProtocol : protocol network calls **/
protocol NetworkCallFactoryProtocol {
    associatedtype Network
    func createNetworkCall() -> Network
    func createNetworkCall(with interceptor: OAuthValidationRequestInterceptorProtocol) -> Network
}
