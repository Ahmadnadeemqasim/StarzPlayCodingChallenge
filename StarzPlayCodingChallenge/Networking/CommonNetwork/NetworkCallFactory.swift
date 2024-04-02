//
//  NetworkCallFactory.swift
//  StarzPlayCodingChallenge
//
//  Created by Ahmad on 30/03/2024
//

import Foundation

/**  NetworkCallFactory : class  for NetworkCalls  **/
final class NetworkCallFactory {
}

extension NetworkCallFactory: NetworkCallFactoryProtocol {
    func createNetworkCall() -> NetworkCallProtocol {
        return NetworkCall()
    }

    func createNetworkCall(with interceptor: OAuthValidationRequestInterceptorProtocol) -> NetworkCallProtocol {
        return NetworkCall(interceptor: interceptor)
    }
}
