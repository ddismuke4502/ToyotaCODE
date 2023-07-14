//
//  Product.swift
//  toyotaJSONstuff
//
//  Created by Dameion Dismuke on 7/13/23.
//

import Foundation

struct ProductResopnse: Decodable {
    let products: [Product]
}

struct Product: Decodable, Identifiable {
    let id: Int
    let title: String
    let description: String
    let images: [String]
    let thumbnail: String
}
