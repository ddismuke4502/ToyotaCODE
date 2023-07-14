//
//  ProductDetailsView.swift
//  toyotaJSONstuff
//
//  Created by Dameion Dismuke on 7/13/23.
//

import SwiftUI

struct ProductDetailsView: View {
    
    let product: Product
    var body: some View {
        List {
            ForEach(product.images, id: \.self) {  imageUrl in
                
                AsyncImage(url: URL(string: imageUrl))
                
            }
        }
    }
}

/*
struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView()
    }
}
*/
