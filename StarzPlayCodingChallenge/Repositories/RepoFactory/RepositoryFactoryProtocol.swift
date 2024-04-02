//
//  RepositoryFactoryProtocol.swift
//  StarzPlayCodingChallenge
//
//  Created by Ahmad on 30/03/2024
//

import Foundation

import UIKit

protocol RepositoryFactoryProtocol {
    associatedtype Repository
    func createRepository(network: NetworkCallProtocol, parser: Parser) -> Repository
}
