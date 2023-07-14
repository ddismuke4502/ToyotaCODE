//
//  ContentView.swift
//  toyotaJSONstuff
//
//  Created by Dameion Dismuke on 7/13/23.
//

import SwiftUI

// https://dummyjson.com/products

struct ContentView: View {
    
    @StateObject var viewModel = ProductsViewModel()
    
    var body: some View {
        
        NavigationView {
            switch viewModel.viewState {
            case .emptyView:
                Text("Loading....")
            case .showProducts:
                List {
                    ForEach(viewModel.products) { product in
                       
                        
                        NavigationLink {
                            ProductDetailsView(product: product)
                        } label: {
                            ProductCell(product: product)
                        }

                    }
                }
            case .error:
                Text("Something went wrong , pls try again!")
            }
        }
        .task {
            await viewModel.fetchProducts()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
