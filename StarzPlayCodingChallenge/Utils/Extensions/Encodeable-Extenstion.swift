//
//  Extenstion.swift
//  StarzPlayCodingChallenge
//
//  Created by Ahmad on 30/03/2024
//

import Foundation

// ----------------------------------------------------------------------------------
// MARK: - Encodable/Codable extension
// ----------------------------------------------------------------------------------

extension Encodable {
    
    // MARK: - Encode swift to JSON
    var jsonDictionary: [String: Any]? {
        guard let data = try? JSONEncoder().encode(self) else { return nil }
        return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)).flatMap { $0 as? [String: Any] }
    }
    
    // MARK: - Encode model to data
    func encode() -> Data? {
        let encoder = JSONEncoder()
        let data = try? encoder.encode(self)
        return data
    }
}
