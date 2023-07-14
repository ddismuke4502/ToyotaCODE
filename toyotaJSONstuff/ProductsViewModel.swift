//
//  ProductsViewModel.swift
//  toyotaJSONstuff
//
//  Created by Dameion Dismuke on 7/13/23.
//

import Foundation

enum ViewState {
    case emptyView
    case showProducts
    case error
}

@MainActor
final class  ProductsViewModel: ObservableObject {
    
    private let networkManager: Networkable
    var products: [Product] = []
    @Published var viewState  = ViewState.emptyView
    init(networkManager: Networkable = NetworkManager()) {
        self.networkManager = networkManager
    }
    
    func fetchProducts() async {
        
        do {
            
            let productRepponse = try await networkManager.getProducts(url: "https://dummyjson.com/products")
            products = productRepponse.products
            viewState = .showProducts
        } catch {
            viewState = .error
            // handle error
        }
        
        
    }
    
    
}
