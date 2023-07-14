//
//  NetworkManager.swift
//  toyotaJSONstuff
//
//  Created by Dameion Dismuke on 7/13/23.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
}

protocol Networkable {
    func getProducts(url: String)async throws -> ProductResopnse
}

class NetworkManager: Networkable {
    func getProducts(url: String)async throws -> ProductResopnse {
        
        guard let urlObj = URL(string: url) else {
            throw NetworkError.invalidURL
        }
        
        let (data, _) = try await URLSession.shared.data(from: urlObj)
        
        let decoder = JSONDecoder()
        
        return try decoder.decode(ProductResopnse.self, from: data)
        
    }
}
